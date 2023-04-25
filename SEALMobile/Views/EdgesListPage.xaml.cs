using System;
using System.Collections.Generic;
using SEALMobile.Models;
using Xamarin.Forms;

namespace SEALMobile.Views
{
    public partial class EdgesListPage : ContentPage
    {
        Project project;
        protected override void OnAppearing()
        {
            base.OnAppearing();
            BindingContext = new EdgesViewModel(project);
        }

        public EdgesListPage(Project pj)
        {
            InitializeComponent();
            project = pj;
            //Title = project.projectname;
            project_name.Text = project.projectname;
            BindingContext = new EdgesViewModel(project);
            base.OnAppearing();
        }

        void edge_ItemSelected(System.Object sender, Xamarin.Forms.SelectedItemChangedEventArgs e)
        {
            Edge edge = (Edge)edge_collectionView.SelectedItem;
            Navigation.PushAsync(new EdgeDetailPage(edge, project), true);
            //navigationPage.PushAsync(new EdgeDetailPage(edge, project), true);
           
        }
        void cloud_ItemSelected(System.Object sender, Xamarin.Forms.SelectedItemChangedEventArgs e)
        {
            Edge edge = (Edge)cloud_collectionView.SelectedItem;
            Navigation.PushAsync(new CloudDetailPage(edge, project), true);
        }

        void create_new_edge_Clicked(System.Object sender, System.EventArgs e)
        {
            Navigation.PushAsync(new CreateEdgePage(project), true);
        }
    }
}
