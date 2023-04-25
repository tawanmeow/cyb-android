using System;
using System.IO;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using GraphQL;
using GraphQL.Client.Http;
using GraphQL.Client.Serializer.Newtonsoft;
using System.Collections.ObjectModel;


namespace SEALMobile.Models
{
    public class EdgeDetailViewModel
    {
        Edge edge;
        Project project;
        public EdgeDevice device { get; set; }
        public EdgeDetailViewModel(Edge e, Project p)
        {
            edge = e;
            project = p;
            device = new EdgeDevice();
            Console.WriteLine(e.alias);
            LoadMore();
        }
        async void LoadMore()
        {
            var connector = new SealGatewayConnector();
            var graphQLHttp = connector.GetGraphQLClient();

            var deviceREQ = new GraphQLRequest
            {
                Query = @"query($did:String!, $pid:String) {device(deviceid: $did, projectid: $pid){
                            alias,description,deviceid,devicetoken,hashtag,devicesecret,projectid,sync,status
                        }}",
                Variables = new
                {
                    did = edge.deviceid,
                    pid = project.projectid
                }
            };

            var graphQLResponse = await graphQLHttp.SendQueryAsync<dataDevice>(deviceREQ);
            var res = graphQLResponse.Data.device;
            device = res;
            //Console.WriteLine(device.deviceid);

        }



    }

    public class dataDevice
    {
        public EdgeDevice device { get; set; }
    }

    public class EdgeDevice
    {
        public string alias { get; set; }
        public string description { get; set; }
        public string deviceid { get; set; }
        public string[] devicetoken { get; set; }
        public string[] hashtag { get; set; }
        public string devicesecret { get; set; }
        public string projectid { get; set; }
        public string sync { get; set; }
        public string status {get;set;}
    }
}
