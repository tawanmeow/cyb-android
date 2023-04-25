using System;
using System.Collections.Generic;
using System.IO;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using GraphQL;
using GraphQL.Client.Http;
using GraphQL.Client.Serializer.Newtonsoft;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using SEALMobile.Models;
using Xamarin.Forms;

namespace SEALMobile.Views
{
    public partial class LoginPage : ContentPage
    {
        public class Login
        {
            public string access_token { get; set; }
            public string token_type { get; set; }
        }

        public class Data
        {
            public Login login;
        }

        string dir = "UserInfo";

        string documents;
        string directoryname;

        public LoginPage()
        {
            InitializeComponent();
            //user_value.Text = "cpsSECteam@gmail.com";
            //pass_value.Text = "1q2w3e4r#Cipherflow";

            //user_value.Text = "eakarat.sak@ku.th";
            //pass_value.Text = "5546";

            documents = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            directoryname = Path.Combine(documents, dir);

            if (!Directory.Exists(directoryname))
            {
                Directory.CreateDirectory(directoryname);
            }
            Console.WriteLine(directoryname);
        }

        async void Handle_Login(object sender, System.EventArgs e)
        {
            alertLabel.Text = "";

            var connector = new SealGatewayConnector(true);
            var graphQLHttp = connector.LoginClient();

            var loginTokenRequest = new GraphQLRequest
            {
                Query = @"mutation ($usr: String!, $pwd: String!) {login (username: $usr, password: $pwd) {access_token, token_type}}",
                Variables = new
                {
                    usr = user_value.Text,
                    pwd = pass_value.Text
                }
            };

            try
            {
                var graphQLResponse = await graphQLHttp.SendQueryAsync<Data>(loginTokenRequest);
                var res = graphQLResponse;

                if (res.Data.login != null)
                {
                    //Console.WriteLine("PASS");
                    Console.WriteLine("RES " + res.Data.login.access_token);
                    var path = Path.Combine(documents, dir, "access_token.txt");
                    File.WriteAllText(path, res.Data.login.access_token);

                    var home = new UserHomePage();
                    //var home = new HomeTabbedPage();

                    loadDashboardToken();

                    await Navigation.PushAsync(home, true);
                }

                else
                {
                    //Console.WriteLine("ERROR");
                    var err = res.Errors[0].Message;
                    Console.WriteLine("ERR " + err);
                    //await DisplayAlert("ERROR", err, "close");
                    if (err == "Invalid FHE account: unauthorized")
                    {
                        alertLabel.Text = "Username is not in the whitelist. Please contact NETPIE.";
                    }
                    else
                    {
                        alertLabel.Text = "Incorrect username or password. Please try again.";
                    }

                }

            }
            catch (Exception ex)
            {
                Console.WriteLine("CATCH " + ex.Message);
                await DisplayAlert("Catch", ex.Message, "Close");
            }
        }

        async void loadDashboardToken()
        {
            try
            {

                var connector = new SealGatewayConnector();
                var graphQLHttp = connector.GetGraphQLClient();

                var projectsREQ = new GraphQLRequest
                {
                    Query = @"query ($htag: [String]) {
                    projectList(limit: 5, filter:{hashtag: $htag} ){
                        projectid,projectname,description
                    }
                }",
                    Variables = new
                    {
                        htag = "FHE"
                    }
                };

                var graphQLResponse = await graphQLHttp.SendQueryAsync<dataProject>(projectsREQ);
                var res = graphQLResponse.Data.projectList;
                Project[] projectsList = res;

                foreach (Project p in projectsList)
                {
                    await setDashboardAsync(p.projectid);
                }


            }
            catch
            {

            }

        }
        async Task setDashboardAsync(string projectid)
        {
            var documents = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            var directoryname = Path.Combine(documents, projectid);

            if (!Directory.Exists(directoryname))
            {
                Directory.CreateDirectory(directoryname);
            }

            var cloudPath = Path.Combine(directoryname, "Dashboard.txt");

            var connector = new SealGatewayConnector();
            var graphQLHttp = connector.GetGraphQLClient();

            var edgesREQ = new GraphQLRequest
            {
                Query = @"query ($pjid: String!, $htag: [String]) { deviceList(filter:{projectid: $pjid, hashtag: $htag}) 
                            { alias, deviceid, description, hashtag }
                        }",
                Variables = new
                {
                    pjid = projectid,
                    htag = "freeboard",
                }
            };

            try
            {
                var graphQLResponse = await graphQLHttp.SendQueryAsync<dataEdge>(edgesREQ);
                Edge res = graphQLResponse.Data.deviceList[0];
                //Console.WriteLine(res.alias);

                var cloudREQ = new GraphQLRequest
                {
                    Query = @"query($did:String!) {device(deviceid: $did){
                            alias,description,deviceid,devicetoken,hashtag,devicesecret,projectid
                        }}",
                    Variables = new
                    {
                        did = res.deviceid
                    }
                };

                var cloudRes = await graphQLHttp.SendQueryAsync<dataDevice>(cloudREQ);
                var edgeDevice = cloudRes.Data.device;
                Console.WriteLine("Dashboard token = " + "#" + edgeDevice.deviceid + ":" + edgeDevice.devicetoken[0]);

                File.WriteAllText(cloudPath, "#" + edgeDevice.deviceid + ":" + edgeDevice.devicetoken[0]);

            }
            catch (Exception e)
            {
                Console.Error.WriteLine(e.ToString());
            }

        }



    }
}