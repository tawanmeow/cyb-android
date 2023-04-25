using System;
using System.Collections.Generic;
using System.IO;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Security.Cryptography;
using System.Text;
using GraphQL;
using GraphQL.Client.Http;
using GraphQL.Client.Serializer.Newtonsoft;
using Newtonsoft.Json;
using SEALMobile.Models;
using Xamarin.Forms;

namespace SEALMobile.Views
{
    public partial class CloudDetailPage : ContentPage
    {

        Project project;
        Edge edge;
        EdgeDetailViewModel model;
        public CloudDetailPage(Edge e, Project pj)
        {
            InitializeComponent();
            edge = e;
            project = pj;
            Title = edge.alias;
            BindingContext = edge;
            project_name.BindingContext = project;
            model = new EdgeDetailViewModel(edge, project);


        }


        void SendKey_Button_Clicked(System.Object sender, System.EventArgs e)
        {
            var documents = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            var rlkPath = Path.Combine(documents, project.projectid, "relinKeys.txt");
            var typePath = Path.Combine(documents, project.projectid, "type.txt");
            var rlkBase64 = File.ReadAllText(rlkPath);
            var contextType = File.ReadAllText(typePath);

            sendHashAsync(rlkBase64);
            sendRlkToCloud(rlkBase64, contextType);

            Navigation.PopAsync();

        }

        private async void sendHashAsync(string rlkBase64)
        {
            var connector = new SealGatewayConnector();
            var graphQLHttp = connector.GetGraphQLClient();

            var rlk = ComputeSha256Hash(rlkBase64);


            RLKey hashKey = new RLKey()
            {
                RLK_HASH = rlk
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

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
        }



        private async void sendRlkToCloud(string rlkKey, string contextType)
        {
            var connector = new SealGatewayConnector();
            var graphQLHttp = connector.GetGraphQLClient();

            var sendRLKtoCloud = new GraphQLRequest
            {
                Query = @"mutation ($pid:String!, $rlk:String!, $clid:String!, $token:String!, $context:String!) { 
                                uploadRelinKey(projectid: $pid, relinKeyBase64: $rlk, clientId: $clid, token: $token, contextType: $context){
                                    success
                                } 
                            }",
                Variables = new
                {
                    pid = project.projectid,
                    rlk = rlkKey,
                    clid = edge.deviceid,
                    token = model.device.devicetoken[0],
                    context = contextType
                }
            };

            try
            {
                var graphQLResponse = await graphQLHttp.SendQueryAsync<data>(sendRLKtoCloud);
                var res = graphQLResponse.Data.uploadRelinKey.success;

                Console.WriteLine(res);

                //await Navigation.PushAsync(new UserHomePage(), true);
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
            }
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

        public class RLKey
        {
            public string RLK_HASH { get; set; }
        }

        private class data
        {
            public uploadRelinKey uploadRelinKey { get; set; }
        }
        public class uploadRelinKey
        {
            public bool success { get; set; }
        }

    }
}
