using System;
using System.IO;
using System.Net.Http.Headers;
using System.Xml.Linq;
using GraphQL;
using GraphQL.Client.Http;
using GraphQL.Client.Serializer.Newtonsoft;
using SEALMobile.Models;
using SEALMobile.Views;
using Xamarin.Forms;

namespace SEALMobile.Views
{
    public partial class ProjectPage : ContentPage
    {

        Project project;

        protected override void OnAppearing()
        {
            BindingContext = new EdgesViewModel(project);
            hasKeySet();
        }

        public ProjectPage(Project pj)
        {
            InitializeComponent();
            project = pj;
            project_name.Text = project.projectname;
            project_description.Text = project.description;

            BindingContext = new EdgesViewModel(project);
            base.OnAppearing();

            var documents = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            var directoryname = Path.Combine(documents, project.projectid);

            if (!Directory.Exists(directoryname))
            {
                Directory.CreateDirectory(directoryname);
            }

            hasKeySet();

            //SaveDashboardToken();



        }

        void hasKeySet()
        {
            var documents = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            var directoryname = Path.Combine(documents, project.projectid);
            var skPath = Path.Combine(directoryname, "secretKey.txt");

            try
            {
                var sk = File.ReadAllText(skPath);
                if (sk != null || sk != "")
                {
                    new_key.IsVisible = false;
                    revoke_key.IsVisible = true;
                }
            }
            catch
            {
                new_key.IsVisible = true;
                revoke_key.IsVisible = false;
            }
        }

        async void SaveDashboardToken()
        {
            var documents = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            var cloudPath = Path.Combine(documents, project.projectid, "Dashboard.txt");

            var connector = new SealGatewayConnector();
            var graphQLHttp = connector.GetGraphQLClient();

            var edgesREQ = new GraphQLRequest
            {
                Query = @"query ($pjid: String!, $htag: [String]) { deviceList(filter:{projectid: $pjid, hashtag: $htag}) 
                            { alias, deviceid, description, hashtag }
                        }",
                Variables = new
                {
                    pjid = project.projectid,
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
                //Console.WriteLine("Dashboard token = " + "#" + edgeDevice.deviceid + ":" + edgeDevice.devicetoken[0]);

                File.WriteAllText(cloudPath, "#" + edgeDevice.deviceid + ":" + edgeDevice.devicetoken[0]);

            }
            catch (Exception e)
            {
                Console.Error.WriteLine(e.ToString());
            }

        }

        public async void Handle_DeleteBtn(object sender, EventArgs e)
        {
            var answer = await DisplayAlert("Delete Project ?", "Project: " + project.projectname + "\nID: " + project.projectid, "YES", "NO");

            if (answer)
            {
                var connector = new SealGatewayConnector();
                var graphQLHttp = connector.GetGraphQLClient();

                var deleteProjREQ = new GraphQLRequest
                {
                    Query = @"mutation ($pjid: String!) {
                            deleteProject(projectid: $pjid){
                                projectid,projectname
                            }
                        }",
                    Variables = new
                    {
                        pjid = project.projectid
                    }
                };

                try
                {
                    var graphQLResponse = await graphQLHttp.SendQueryAsync<resDeleteProject>(deleteProjREQ);
                    var res = graphQLResponse;

                    if (res.Data != null)
                    {
                        //Console.WriteLine("RES ");
                        Console.WriteLine("RES " + res.Data.deleteProject.projectid);
                        await DisplayAlert("Already Delete", "Project: " + res.Data.deleteProject.projectname + "\nID: " + res.Data.deleteProject.projectid, "Close");

                        //await Navigation.PopAsync();
                        var parentPage = this.Parent.Parent as TabbedPage;
                        await parentPage.Navigation.PopAsync();
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
                    //await DisplayAlert("Catch", ex.Message, "Close");
                    Console.Error.WriteLine(ex.ToString());

                }
            }

        }

        void Handle_EdgeList(object sender, EventArgs e)
        {
            Navigation.PushAsync(new EdgesListPage(project), true);

        }
        void Handle_KeyGenerator(object sender, EventArgs e)
        {
            Navigation.PushAsync(new KeyGeneratorPage(project), true);
        }
        void Handle_KeyRevoke(object sender, EventArgs e)
        {
            Navigation.PushAsync(new KeyDetail(project), true);
        }
        void Handle_Dashboards(object sender, EventArgs e)
        {
            Navigation.PushAsync(new DashboardPage(project), true);
        }
        void Handle_CreateEdge(System.Object sender, System.EventArgs e)
        {
            Navigation.PushAsync(new CreateEdgePage(project), true);
        }

        void edge_ItemSelected(System.Object sender, Xamarin.Forms.SelectedItemChangedEventArgs e)
        {
            Edge edge = (Edge)edge_collectionView.SelectedItem;
            Navigation.PushAsync(new EdgeDetailPage(edge, project), true);
        }
        void cloud_ItemSelected(System.Object sender, Xamarin.Forms.SelectedItemChangedEventArgs e)
        {
            Edge edge = (Edge)cloud_collectionView.SelectedItem;
            Navigation.PushAsync(new CloudDetailPage(edge, project), true);
        }

        public class resDeleteProject
        {
            public Project deleteProject { get; set; }
        }
    }

}
