using System;
using System.Collections.Generic;
using Xamarin.CommunityToolkit.UI.Views;
using Xamarin.Forms;

namespace SEALMobile.ViewsAlert
{
    public partial class KeyGenAlert2 : Popup
    {
        public KeyGenAlert2()
        {
            InitializeComponent();
        }

        void Button_Clicked(System.Object sender, System.EventArgs e)
        {
            Dismiss("OK2");
        }
    }
}
