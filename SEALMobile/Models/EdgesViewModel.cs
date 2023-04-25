using System;
using System.Collections.ObjectModel;
using System.IO;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using GraphQL;
using GraphQL.Client.Http;
using GraphQL.Client.Serializer.Newtonsoft;
using Xamarin.CommunityToolkit.ObjectModel;

namespace SEALMobile.Models
{
    public class EdgesViewModel
    {
        public ObservableCollection<Edge> Edges { get; set; }
        public ObservableCollection<Edge> Cloud { get; set; }
        public Edge[] edgesList;
        string id;

        public EdgesViewModel(Project project)
        {
            Edges = new ObservableRangeCollection<Edge>();
            Cloud = new ObservableRangeCollection<Edge>();
            id = project.projectid;
            LoadMore();
        }

        async void LoadMore()
        {
            var connector = new SealGatewayConnector();
            var graphQLHttp = connector.GetGraphQLClient();

            var edgesREQ = new GraphQLRequest
            {
                Query = @"query ($pjid: String!, $htag: [String]) { deviceList(filter:{projectid: $pjid , hashtag: $htag} )
                            { alias, deviceid, description, hashtag, sync }
                        }",
                Variables = new
                {
                    pjid = id,
                    htag = "edge"
                }
            };

            var cloudREQ = new GraphQLRequest
            {
                Query = @"query ($pjid: String!, $htag: [String]) { deviceList(filter:{projectid: $pjid , hashtag: $htag} )
                            { alias, deviceid, description, hashtag, sync }
                        }",
                Variables = new
                {
                    pjid = id,
                    htag = "cloud"
                }
            };

            var edgesRES = await graphQLHttp.SendQueryAsync<dataEdge>(edgesREQ);
            var Eres = edgesRES.Data.deviceList;
            edgesList = Eres;

            foreach (Edge p in Eres)
            {
                Edges.Add(p);
            }

            var cloudRES = await graphQLHttp.SendQueryAsync<dataEdge>(cloudREQ);
            var Cres = cloudRES.Data.deviceList;
            foreach (Edge p in Cres)
            {
                Cloud.Add(p);
            }

        }

        public Edge findEdge(string id)
        {
            Edge edge = new Edge();
            foreach (Edge e in edgesList)
            {
                if (e.deviceid == id)
                {
                    edge = e;
                }
            }
            return edge;
        }

    }

    public class dataEdge
    {
        public Edge[] deviceList { get; set; }
    }

    public class Edge
    {
        public string alias { get; set; }
        public string deviceid { get; set; }
        public string description { get; set; }
        public string[] hashtag { get; set; }
        public string sync { get; set; }

    }
}
