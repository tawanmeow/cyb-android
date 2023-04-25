using System;
using System.Collections.Generic;
using System.IO;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using GraphQL;
using GraphQL.Client.Http;
using GraphQL.Client.Serializer.Newtonsoft;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using SEALMobile.Models;
using Xamarin.CommunityToolkit.Extensions;
using Xamarin.Forms;

namespace SEALMobile.Views
{
    public partial class EdgeDetailPage : ContentPage
    {
        string qrRes;
        Project project;
        Edge edge;
        EdgeDetailViewModel model;



        public EdgeDetailPage(Edge e, Project pj)
        {
            InitializeComponent();
            edge = e;
            project = pj;
            Title = edge.alias;
            BindingContext = edge;
            project_name.BindingContext = project;
            model = new EdgeDetailViewModel(edge, project);

            Console.WriteLine(edge.sync);
        }

        async void Delete_Button_Clicked(System.Object sender, System.EventArgs e)
        {
            var answer = await DisplayAlert("Delete Device ?", "Device: " + edge.alias + "\nID: " + edge.deviceid, "YES", "NO");

            if (answer)
            {
                var connector = new SealGatewayConnector();
                var graphQLHttp = connector.GetGraphQLClient();

                var deleteEdgeREQ = new GraphQLRequest
                {
                    Query = @"mutation ($did:String!) { 
                                deleteDevice(deviceid: $did) {
                                    alias,deviceid,description
                                } 
                            }",
                    Variables = new
                    {
                        did = edge.deviceid
                    }
                };

                try
                {
                    var graphQLResponse = await graphQLHttp.SendQueryAsync<dataDeleteEdge>(deleteEdgeREQ);
                    var res = graphQLResponse;

                    if (res.Data != null)
                    {
                        //Console.WriteLine("RES ");
                        Console.WriteLine("RES " + res.Data.deleteDevice.alias);
                        await DisplayAlert("Already Delete", "Device: " + res.Data.deleteDevice.alias + "\nID: " + res.Data.deleteDevice.deviceid, "Close");
                        await Navigation.PopAsync();
                    }
                    else
                    {
                        //Console.WriteLine("ERR ");
                        Console.WriteLine("ERR " + res.Errors[0].Message);
                        await DisplayAlert("Error!", "Can not delete device cause " + res.Errors[0].Message, "Close");

                    }



                }
                catch (Exception ex)
                {
                    await DisplayAlert("Catch", ex.Message, "Close");
                }
            }

        }

        async void Pair_Button_Clicked(System.Object sender, System.EventArgs e)
        {
            //Mockpair
            //sendHashAsync();
            bool alreadyHasKey = false;
            try
            {
                var documents = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
                var skPath = Path.Combine(documents, project.projectid, "secretKey.txt");
                var sk = File.ReadAllText(skPath);
                if (sk != null || sk != "")
                {
                    alreadyHasKey = true;
                }
            }
            catch
            {
                alreadyHasKey = false;
            }
            if (alreadyHasKey)
            {

                var result = await Navigation.ShowPopupAsync(new MyScanner());
                string text = result.ToString();
                qrRes = text;
                //qrRes = "{ \"hostname\":\"eak\",\"hostIP\":\"http://localhost:9000\",\"endPoint\":\"/import/contextAndPublicKey\",\"oneTimePassword\":\"gogeEaTNdTeUYT3Wan5lSSTe8bRkUulFQ7RhsZCX8yWzl7mAwt\"} ";
                if (!result.Equals("closed"))
                {
                    JObject hostJson = JObject.Parse(qrRes);
                    Host host = hostJson.ToObject<Host>();

                    string uri = "";

                    if (!host.hostIP.Contains("http"))
                    {
                        uri += "http://";
                    }

                    uri += host.hostIP;

                    if (host.port != null && host.port != "")
                    {
                        uri += ":" + host.port;
                    }

                    uri += host.endpoint;

                    //Console.WriteLine(uri);

                    HttpClient client = new HttpClient();

                    var edgeReq = prepareEdgeREQ();
                    edgeReq.oneTimePassword = host.oneTimePassword;

                    //dataPacking dataPacking = new dataPacking { data = edgeReq };
                    //string jsonPacking = JsonConvert.SerializeObject(dataPacking, Formatting.Indented);
                    string jsonPacking = JsonConvert.SerializeObject(edgeReq, Formatting.Indented);

                    StringContent content = new StringContent(jsonPacking, Encoding.UTF8, "application/json");

                    var responseMessage = await client.PostAsync(uri, content);

                    Console.WriteLine(responseMessage.StatusCode);

                    if (responseMessage.StatusCode.ToString() == "OK")
                    {
                        sendHashAsync();
                    }

                    await Navigation.PopAsync();
                }
                else
                {
                    await Navigation.PopAsync();
                }
            }
            else
            {
                await DisplayAlert("No Key to Pair!", "Please generate key before pairing edge device", "Close");
            }

        }

        private async void sendHashAsync()
        {
            var documents = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            var connector = new SealGatewayConnector();
            var graphQLHttp = connector.GetGraphQLClient();

            var pkPath = Path.Combine(documents, project.projectid, "publicKey.txt");

            Console.WriteLine(project.projectid);

            var pk = ComputeSha256Hash(File.ReadAllText(pkPath));


            PKey hashKey = new PKey()
            {
                PK_HASH = pk
            };

            string jsonPacking = JsonConvert.SerializeObject(hashKey, Formatting.Indented);
            Console.WriteLine(edge.deviceid + jsonPacking);

            var sendHashToDevice = new GraphQLRequest
            {
                Query = @"mutation ($did: String!, $data: JSON, $m: WriteMode) {
                                writeShadow(deviceid: $did, data: $data, mode: $m)
                                { deviceid, data, rev, modified  }
                            }",
                Variables = new
                {
                    did = edge.deviceid,
                    m = "MERGE",
                    data = jsonPacking
                }
            };

            try
            {
                var graphQLResponse = await graphQLHttp.SendQueryAsync<Data>(sendHashToDevice);
                var res = graphQLResponse;

                Console.WriteLine(res.Data.writeShadow.data.PK_HASH);

                KeepSyncedKey();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
        }


        async void Mockup_Pairing(System.Object sender, System.EventArgs e)
        {
            sendHashAsync();
            await Navigation.PopAsync();
        }

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

        bool KeepSyncedKey()
        {
            var pjName = project.projectid;
            var documents = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);

            var directoryname = Path.Combine(documents, pjName);

            var undoKey = "syncedKey";
            var undoDirectory = Path.Combine(documents, pjName, undoKey);


            if (!Directory.Exists(directoryname))
            {
                Directory.CreateDirectory(directoryname);
            }

            if (!Directory.Exists(undoDirectory))
            {
                Directory.CreateDirectory(undoDirectory);
            }

            var skPath = Path.Combine(documents, pjName, "secretKey.txt");
            var rlkPath = Path.Combine(documents, pjName, "relinKeys.txt");
            var pkPath = Path.Combine(documents, pjName, "publicKey.txt");
            var cotPath = Path.Combine(documents, pjName, "context.txt");
            //var hashPath = Path.Combine(documents, pjName, "hash.txt");
            var scalePath = Path.Combine(documents, pjName, "scale.txt");
            var typePath = Path.Combine(documents, pjName, "type.txt");

            var A_skPath = Path.Combine(directoryname, undoKey, "secretKey.txt");
            var A_rlkPath = Path.Combine(directoryname, undoKey, "relinKeys.txt");
            var A_pkPath = Path.Combine(directoryname, undoKey, "publicKey.txt");
            var A_cotPath = Path.Combine(directoryname, undoKey, "context.txt");
            var A_scalePath = Path.Combine(directoryname, undoKey, "scale.txt");
            var A_typePath = Path.Combine(directoryname, undoKey, "type.txt");

            if (edge.sync == "true")
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

        private EdgeReq prepareEdgeREQ()
        {
            EdgeReq edgeReq = new EdgeReq();
            var projectid = project.projectid;
            var documents = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            var cotPath = Path.Combine(documents, projectid, "context.txt");
            var pkPath = Path.Combine(documents, projectid, "publicKey.txt");
            var scalePath = Path.Combine(documents, projectid, "scale.txt");
            var typePath = Path.Combine(documents, projectid, "type.txt");

            edgeReq.publicKey = File.ReadAllText(pkPath);
            edgeReq.context = File.ReadAllText(cotPath);
            edgeReq.contextType = File.ReadAllText(typePath);
            edgeReq.scale = File.ReadAllText(scalePath);

            EdgeDevice device = model.device;

            edgeReq.netpieDevice = new NetpieDevice
            {
                device_name = device.alias,
                client_id = device.deviceid,
                secret = device.devicesecret,
                token = device.devicetoken
            };

            //Console.WriteLine(edgeReq.context.ToString());
            return edgeReq;
        }

    }




    public class PKey
    {
        public string PK_HASH { get; set; }
    }

    public class dataDeleteEdge
    {
        public Edge deleteDevice { get; set; }
    }

    public class Host
    {
        public string hostname { get; set; }
        public string hostIP { get; set; }
        public string endpoint { get; set; }
        public string oneTimePassword { get; set; }
        public string port { get; set; }
    }

    public class EdgeReq
    {
        public string oneTimePassword { get; set; }
        public string publicKey { get; set; }
        public string context { get; set; }
        public string contextType { get; set; }
        public string scale { get; set; }
        public NetpieDevice netpieDevice { get; set; }

    }

    public class NetpieDevice
    {
        public string device_name { get; set; }
        public string client_id { get; set; }
        public string[] token { get; set; }
        public string secret { get; set; }
    }

    public class dataPacking
    {
        public EdgeReq data { get; set; }
    }
}
