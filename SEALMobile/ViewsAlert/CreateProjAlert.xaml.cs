﻿using System;
using System.Collections.Generic;
using Xamarin.CommunityToolkit.UI.Views;
using Xamarin.Forms;

namespace SEALMobile.ViewsAlert
{
    public partial class CreateProjectAlert : Popup
    {
        public CreateProjectAlert()
        {
            InitializeComponent();
            
        }

        void Button_Clicked(System.Object sender, System.EventArgs e)
        {
            Dismiss("Close");
            //Navigation.PopAsync();

        }
    }
}
