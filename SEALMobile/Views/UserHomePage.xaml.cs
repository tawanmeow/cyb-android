using System;
using System.Collections.ObjectModel;
using System.IO;
using System.Threading.Tasks;
using GraphQL;
using SEALMobile.Models;
using Xamarin.Forms;
using static SEALMobile.Views.LoginPage;

namespace SEALMobile.Views
{
    public partial class UserHomePage
    {

        protected override void OnAppearing()
        {
            BindingContext = new ProjectsViewModel();
            loadDashboardToken();
        }

        public UserHomePage()
        {
            InitializeComponent();
            BindingContext = new ProjectsViewModel();
            //Color = "#808080"

            loadDashboardToken();
        }

        async void Handle_CreateProject(object sender, System.EventArgs e)
        {
            await Navigation.PushAsync(new CreateProjectPage(), true);
        }

        async void CollectionView_ItemSelected(System.Object sender, Xamarin.Forms.SelectedItemChangedEventArgs e)
        {
            Project project = (Project)CollectionView.SelectedItem;
            await setDashboardAsync(project.projectid);
            var documents = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            var path = Path.Combine(documents, "selectedProject.txt");
            File.WriteAllText(path, project.projectid);
            await Navigation.PushAsync(new HomeTabbedPage(project), true);

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
                Console.WriteLine(projectsList.Length);
                if (projectsList.Length >= 3)
                {
                    c_project_Color.Color = Color.FromHex("#808080");
                    createProj_BTN.IsEnabled = false;
                }
                else
                {
                    c_project_Color.Color = Color.FromHex("#09a8ea");
                    createProj_BTN.IsEnabled = true;
                }
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
