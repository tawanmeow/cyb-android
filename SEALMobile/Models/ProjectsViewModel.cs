using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Net.Http;
using System.Threading.Tasks;
using Newtonsoft.Json;
using Xamarin.CommunityToolkit.ObjectModel;
using Xamarin.Forms.Internals;
using System.Linq;
using SEALMobile.Models;
using Xamarin.Forms;
using System.Net.Http.Headers;
using GraphQL.Client.Serializer.Newtonsoft;
using System.IO;
using GraphQL.Client.Http;
using GraphQL;

namespace SEALMobile.Models
{
    public class ProjectsViewModel
    {
        public ObservableCollection<Project> Projects { get; set; }
        public Project[] projectsList;

        public ProjectsViewModel()
        {
            Projects = new ObservableRangeCollection<Project>();
            LoadMore();
        }
        async void LoadMore()
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
            projectsList = res;

            foreach (Project p in res)
            {
                Projects.Add(p);
            }

        }

        public Project findProject(string id)
        {
            Project project = new Project();
            foreach (Project p in projectsList)
            {
                if (p.projectid == id)
                {
                    project = p;
                }
            }
            return project;
        }


    }
    public class dataProject
    {
        public Project[] projectList { get; set; }
    }

    
    public class Project
    {
        public string projectid { get; set; }
        public string projectname { get; set; }
        public string description { get; set; }
    }
}
