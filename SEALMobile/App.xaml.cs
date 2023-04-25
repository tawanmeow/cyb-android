using Xamarin.Forms;
using System.Threading.Tasks;
using EmbedIO;
using System.Reflection;
using EmbedIO.WebApi;
using SEALMobile.Services;
using SEALMobile.Views;
using SEALMobile.ViewsAlert;
using Xamarin.CommunityToolkit.Extensions;

[assembly: ExportFont("RedHatDisplay-VariableFont_wght.ttf", Alias = "Red Hat Display")]

namespace SEALMobile
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();


            Task.Factory.StartNew(async () =>
            {
                using (var server = new WebServer(HttpListenerMode.EmbedIO, "http://*:8080"))
                {
                    Assembly assembly = typeof(App).Assembly;
                    server.WithLocalSessionManager();
                    server.WithWebApi("/api", m => m.WithController(() => new ApiController()));
                    server.WithEmbeddedResources("/", assembly, "SEALMobile.html");
                    await server.RunAsync();
                }
            });

            //MainPage = new NavigationPage(new KeyGeneratorPage(new Models.Project{ projectid="Test" ,projectname="TEST" , description=""}));

            //MainPage = new NavigationPage(new MyPage());
            //MainPage = new NavigationPage(new MyTabbedPage());

            //MainPage = new NavigationPage(new HomeTabbedPage());

            MainPage = new NavigationPage(new LoginPage());
            //MainPage = new NavigationPage(new UserHomePage());
            //MainPage = new NavigationPage(new ProjectPage());
            //MainPage = new NavigationPage(new CreateProjectPage());
            //MainPage = new NavigationPage(new DashboardPage());

        }

        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}
