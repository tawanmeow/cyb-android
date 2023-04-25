using System;
using System.Collections.Generic;

using Xamarin.Forms;

namespace SEALMobile.Views
{
    public partial class ProfilePage : ContentPage
    {
        public ProfilePage()
        {
            InitializeComponent();
        }

        void LogoutBTN(System.Object sender, System.EventArgs e)
        {
            //Navigation.PopToRootAsync();
            var tabbedPage = this.Parent.Parent as TabbedPage;
            tabbedPage.Navigation.PopToRootAsync();
        }

        void Button_Clicked(System.Object sender, System.EventArgs e)
        {
            var tabbedPage = this.Parent.Parent as TabbedPage;
            tabbedPage.Navigation.PopAsync();
        }
    }
}
