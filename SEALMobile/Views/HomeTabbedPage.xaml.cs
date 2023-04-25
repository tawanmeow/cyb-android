using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SEALMobile.Models;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace SEALMobile.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class HomeTabbedPage : TabbedPage
    {
        Project project;
        Page homePage;
        NavigationPage edgeListPage;
        Page dashboardPage;
        Page profilePage;

        public HomeTabbedPage(Project pj)
        {
            InitializeComponent();
            var documents = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);

            project = pj;

            homePage = new NavigationPage(new ProjectPage(project));
            homePage.IconImageSource = "cyblion___white_icon___home.png";
            homePage.Title = "HOME";

            edgeListPage = new NavigationPage(new EdgesListPage(project));
            edgeListPage.IconImageSource = "cyblion___white_icon___edge_ek5.png";
            edgeListPage.Title = "EDGE";

            //dashboardPage = new DashboardPage(project);
            dashboardPage = new NavigationPage(new DashboardPage(project));
            dashboardPage.IconImageSource = "cyblion___white_icon___dashboards_ek4.png";
            dashboardPage.Title = "DATA";

            profilePage = new NavigationPage(new ProfilePage());
            //NavigationPage profilePage = new NavigationPage(new ProfilePage());
            profilePage.IconImageSource = "cyblion___white_icon___avatar_ek4.png";
            profilePage.Title = "PROFILE";
            

            Children.Add(homePage);
            Children.Add(edgeListPage);
            Children.Add(dashboardPage);
            Children.Add(profilePage);
            //Children.Add(new ProjectPage(project));
            //Children.Add(new EdgesListPage(project));

            

        }


    }
}
