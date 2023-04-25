using System;
using System.Collections.Generic;
using SEALMobile.Models;
using Xamarin.Forms;
using Microsoft.Research.SEAL;
using System.IO;
using GraphQL.Client.Http;
using GraphQL.Client.Serializer.Newtonsoft;
using System.Net.Http.Headers;
using GraphQL;
using SEALMobile.ViewsAlert;
using Xamarin.CommunityToolkit.Extensions;
using Xamarin.CommunityToolkit.UI.Views;
using Newtonsoft.Json;
using System.Net.Http;
using System.Text;
using System.Security.Cryptography;

namespace SEALMobile.Views
{

    public partial class KeyGeneratorPage : ContentPage
    {
        ContextSizeViewModel CSL;
        ContextSize contextSize = null;
        EncryptionParameters encParms;
        SEALContext context;

        string skPath;
        string rlkPath;
        string pkPath;
        string cotPath;
        string scalePath;
        string typePath;

        string A_skPath;
        string A_rlkPath;
        string A_pkPath;
        string A_cotPath;
        string A_scalePath;
        string A_typePath;

        bool alreadyHasKey = false;
        Project project;
        EdgesViewModel edgesViewModel;

        public KeyGeneratorPage(Project pj)
        {
            InitializeComponent();
            CSL = new ContextSizeViewModel();
            contextSizeSelector.BindingContext = CSL;
            project = pj;
            edgesViewModel = new EdgesViewModel(project);

            ProjectNameLabel.Text = project.projectname;

            var pjName = project.projectid;
            var documents = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            var directoryname = Path.Combine(documents, pjName);

            if (!Directory.Exists(directoryname))
            {
                Directory.CreateDirectory(directoryname);
            }

            skPath = Path.Combine(documents, pjName, "secretKey.txt");
            rlkPath = Path.Combine(documents, pjName, "relinKeys.txt");
            pkPath = Path.Combine(documents, pjName, "publicKey.txt");
            cotPath = Path.Combine(documents, pjName, "context.txt");
            //hashPath = Path.Combine(documents, pjName, "hash.txt");
            scalePath = Path.Combine(documents, pjName, "scale.txt");
            typePath = Path.Combine(documents, pjName, "type.txt");

            var undoKey = "syncedKey";
            var undoDirectory = Path.Combine(documents, pjName, undoKey);

            if (!Directory.Exists(undoDirectory))
            {
                Directory.CreateDirectory(undoDirectory);
            }

            A_skPath = Path.Combine(directoryname, undoKey, "secretKey.txt");
            A_rlkPath = Path.Combine(directoryname, undoKey, "relinKeys.txt");
            A_pkPath = Path.Combine(directoryname, undoKey, "publicKey.txt");
            A_cotPath = Path.Combine(directoryname, undoKey, "context.txt");
            A_scalePath = Path.Combine(directoryname, undoKey, "scale.txt");
            A_typePath = Path.Combine(directoryname, undoKey, "type.txt");


            try
            {
                var sk = File.ReadAllText(skPath);
                if (sk != null || sk != "")
                {
                    alreadyHasKey = true;
                    already_generated.IsVisible = true;
                }
            }
            catch
            {
                alreadyHasKey = false;
            }


            try
            {
                var ct = File.ReadAllText(skPath);
                var A_ct = File.ReadAllText(A_skPath);
                if ((ct != null || ct != "") && (A_ct != null || A_ct != ""))
                {
                    if (ct != A_ct)
                    {
                        undoKeyBtn.IsVisible = true;
                    }
                    else
                    {
                        undoKeyBtn.IsVisible = false;
                    }
                }
            }
            catch
            {
                undoKeyBtn.IsVisible = false;
            }

        }

        async void KeyGen_Button_Clicked(object sender, System.EventArgs e)
        {
            var cfGenkey = false;
            if (alreadyHasKey && contextSize != null)
            {
                var res = (string)await Navigation.ShowPopupAsync(new KeyGenAlert());
                if (res == "OK")
                {
                    var res2 = (string)await Navigation.ShowPopupAsync(new KeyGenAlert2());
                    if (res2 == "OK2")
                    {
                        cfGenkey = true;
                        KeepSyncedKey();
                        Console.WriteLine("Doing KeyGen");
                    }
                }
            }

            Console.WriteLine(cfGenkey + " " + alreadyHasKey);
            if (contextSize != null && (cfGenkey || !alreadyHasKey))
            {
                encParms = new EncryptionParameters(SchemeType.CKKS);
                ulong polyModulusDegree = contextSize.PolyModulusDegree;
                encParms.PolyModulusDegree = polyModulusDegree;
                encParms.CoeffModulus = CoeffModulus.Create(polyModulusDegree, contextSize.CoeffModulus);
                context = new SEALContext(encParms, true, SecLevelType.None);

                KeyGenerator keyGenerator = new KeyGenerator(context);
                SecretKey secretKey = keyGenerator.SecretKey;
                PublicKey publicKey = new PublicKey();
                RelinKeys relinKeys = new RelinKeys();

                keyGenerator.CreatePublicKey(out publicKey);
                keyGenerator.CreateRelinKeys(out relinKeys);

                MemoryStream skStream = new MemoryStream();
                MemoryStream pkStream = new MemoryStream();
                MemoryStream rlkStream = new MemoryStream();
                MemoryStream cotStream = new MemoryStream();

                secretKey.Save(skStream);
                publicKey.Save(pkStream);
                relinKeys.Save(rlkStream);
                encParms.Save(cotStream);


                var skBase64 = ToBase64(skStream);
                var pkBase64 = ToBase64(pkStream);
                var rlkBase64 = ToBase64(rlkStream);
                var cotBase64 = ToBase64(cotStream);

                File.WriteAllText(skPath, skBase64);
                File.WriteAllText(pkPath, pkBase64);
                File.WriteAllText(rlkPath, rlkBase64);
                File.WriteAllText(cotPath, cotBase64);
                File.WriteAllText(typePath, contextSize.Name.ToLower());
                File.WriteAllText(scalePath, contextSize.scale + "");

                string pkHash = ComputeSha256Hash(pkBase64);
                string rlkHash = ComputeSha256Hash(rlkBase64);

                sendHashKey(pkHash, rlkHash);

                Console.WriteLine("CONTEXT SIZE: " + contextSize.Name + " GENERATE! ");
                already_generated.IsVisible = true;

            }
            else if (contextSize == null)
            {
                await DisplayAlert("Alert", "Please choose context size before generate keys", "Got it!");
            }
        }

        async void UndoKey_Button_Clicked(object sender, System.EventArgs e)
        {
            bool canUndo = false;
            try
            {
                var sk = File.ReadAllText(skPath);
                var A_sk = File.ReadAllText(A_skPath);
                if ((sk != null || sk != "") && (A_sk != null || A_sk != ""))
                {
                    canUndo = true;
                }
            }
            catch
            {
                canUndo = false;
            }

            if (canUndo)
            {
                var successUndo = undoKey();
                if (successUndo)
                {
                    await Navigation.PopAsync();
                }
            }

        }

        private async void sendHashKey(string PK, string RLK)
        {
            var documents = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            var connector = new SealGatewayConnector();
            var graphQLHttp = connector.GetGraphQLClient();

            var dashPath = Path.Combine(documents, project.projectid, "Dashboard.txt");

            var s = File.ReadAllText(dashPath);
            s = s.Remove(0, 1);
            string[] lstoken = s.Split(':');

            Key hashKey = new Key()
            {
                PK_HASH = PK,
                RLK_HASH = RLK
            };

            string jsonPacking = JsonConvert.SerializeObject(hashKey, Formatting.Indented);
            Console.WriteLine(lstoken[0] + jsonPacking);

            var sendHashToDevice = new GraphQLRequest
            {
                Query = @"mutation ($did: String!, $data: JSON, $m: WriteMode) {
                                writeShadow(deviceid: $did, data: $data, mode: $m)
                                { deviceid, data, rev, modified  }
                            }",
                Variables = new
                {
                    did = lstoken[0],
                    m = "MERGE",
                    data = jsonPacking
                }
            };

            try
            {
                var graphQLResponse = await graphQLHttp.SendQueryAsync<Data>(sendHashToDevice);
                var res = graphQLResponse;

                Console.WriteLine(res.Data.writeShadow.data.PK_HASH);
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
            }
        }

        // convert Stream to StringBase64
        public static string ToBase64(MemoryStream data)
        {
            var dataAsString = Convert.ToBase64String(data.ToArray());
            return dataAsString;
        }

        // convert StringBase64 to Stream
        public static MemoryStream ToMemoryStream(string data)
        {
            var bytes = Convert.FromBase64String(data);
            var dataAsStream = new MemoryStream(bytes);
            return dataAsStream;
        }

        // hash Key to SHA256
        static string ComputeSha256Hash(string rawData)
        {
            // Create a SHA256   
            using (SHA256 sha256Hash = SHA256.Create())
            {
                // ComputeHash - returns byte array  
                byte[] bytes = sha256Hash.ComputeHash(Encoding.UTF8.GetBytes(rawData));

                // Convert byte array to a string   
                StringBuilder builder = new StringBuilder();
                for (int i = 0; i < bytes.Length; i++)
                {
                    builder.Append(bytes[i].ToString("x2"));
                }
                return builder.ToString();
            }
        }

        void contextSizeSelector_SelectionChanged(System.Object sender, Xamarin.Forms.SelectionChangedEventArgs e)
        {
            contextSize = (ContextSize)contextSizeSelector.SelectedItem;
            Console.WriteLine(contextSize.Name);
        }

        bool KeepSyncedKey()
        {
            bool synced = false;
            //checking deviceList for any device has SYNCED
            var deviceList = edgesViewModel.edgesList;
            foreach (Edge e in deviceList)
            {
                if (e.sync == "true")
                {
                    synced = true;
                    break;
                }
            }
            if (synced)
            {
                File.Copy(skPath, A_skPath, true);
                File.Copy(rlkPath, A_rlkPath, true);
                File.Copy(pkPath, A_pkPath, true);
                File.Copy(cotPath, A_cotPath, true);
                File.Copy(scalePath, A_scalePath, true);
                File.Copy(typePath, A_typePath, true);
                return true;
            }
            else
            {
                return false;
            }

        }

        bool undoKey()
        {
            bool synced = KeepSyncedKey();
            if (!synced)
            {
                File.Copy(A_skPath, skPath, true);
                File.Copy(A_rlkPath, rlkPath, true);
                File.Copy(A_pkPath, pkPath, true);
                File.Copy(A_cotPath, cotPath, true);
                File.Copy(A_scalePath, scalePath, true);
                File.Copy(A_typePath, typePath, true);

                Console.WriteLine("Copyfile");

                string pkHash = ComputeSha256Hash(File.ReadAllText(pkPath));
                string rlkHash = ComputeSha256Hash(File.ReadAllText(rlkPath));

                sendHashKey(pkHash, rlkHash);
                return true;
            }
            else
            {
                return false;
            }

        }

        async void Button_Clicked(System.Object sender, System.EventArgs e)
        {
            var sk = File.ReadAllText(skPath);
            if (sk != null || sk != "")
            {
                var res = (string)await Navigation.ShowPopupAsync(new KeyGenAlert());
                if (res == "OK")
                {
                    var res2 = (string)await Navigation.ShowPopupAsync(new KeyGenAlert2());
                    if (res2 == "OK2")
                    {
                        Console.WriteLine("Doing KeyGen");
                    }
                }
            }

        }
    }



    public class Data
    {
        public WriteShadow writeShadow { get; set; }
    }

    public class Key
    {
        public string RLK_HASH { get; set; }
        public string PK_HASH { get; set; }
    }

    public class WriteShadow
    {
        public Key data { get; set; }
    }

}
