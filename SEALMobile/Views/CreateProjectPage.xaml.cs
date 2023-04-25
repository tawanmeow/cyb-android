using System;
using System.Collections.Generic;
using System.IO;
using System.Net.Http.Headers;
using GraphQL;
using GraphQL.Client.Http;
using GraphQL.Client.Serializer.Newtonsoft;
using SEALMobile.Models;
using SEALMobile.ViewsAlert;
using Xamarin.CommunityToolkit.Extensions;
using Xamarin.Forms;

namespace SEALMobile.Views
{
    public partial class CreateProjectPage : ContentPage
    {
        public CreateProjectPage()
        {
            InitializeComponent();
        }
        async void Button_Clicked(System.Object sender, System.EventArgs e)
        {
            if (name_entry.Text != null || name_entry.Text != "")
            {
                var connector = new SealGatewayConnector();
                var graphQLHttp = connector.GetGraphQLClient();

                var createprojectsREQ = new GraphQLRequest
                {
                    Query = @"mutation ($name:String!, $desc:String!) { 
                                createProject(projectname: $name, description: $desc) {
                                    projectid,projectname,description
                                } 
                            }",
                    Variables = new
                    {
                        name = name_entry.Text,
                        desc = desc_entry.Text
                    }
                };


                try
                {
                    var graphQLResponse = await graphQLHttp.SendQueryAsync<dataCreateProject>(createprojectsREQ);
                    var res = graphQLResponse;

                    //netpie resource limit reached 402
                    //await Navigation.PushAsync(new UserHomePage(), true);

                    if (res.Data.createproject != null)
                    {
                        Project project = res.Data.createproject;
                        await Navigation.PopAsync();
                        await Navigation.PushAsync(new UserHomePage());
                    }
                    else
                    {
                        var err = graphQLResponse.Errors[0].Message;
                        if (res.Errors[0].Message == "netpie resource limit reached")
                        {
                            var status = (string)await Navigation.ShowPopupAsync(new CreateProjectAlert());

                            Console.WriteLine(status);
                            //await DisplayAlert("Alert", "netpie resource limit reached", "Close");

                        }
                    }


                }
                catch
                {
                    await DisplayAlert("Alert", "Can't create project", "Close");
                }


            }
        }
    }
    public class dataCreateProject
    {
        public Project createproject { get; set; }
    }
}
