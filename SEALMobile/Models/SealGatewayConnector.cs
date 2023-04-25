using System;
using System.IO;
using System.Net.Http.Headers;
using GraphQL.Client.Http;
using GraphQL.Client.Serializer.Newtonsoft;

namespace SEALMobile.Models
{
    public class SealGatewayConnector
    {
        string url;
        string token;
        public SealGatewayConnector()
        {
            url = "http://gql.cyblion.io/";

            var documents = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            var path = Path.Combine(documents, "UserInfo", "access_token.txt");
            token = File.ReadAllText(path);
        }
        public SealGatewayConnector(bool isLogin)
        {
            if (isLogin)
            {
                url = "http://gql.cyblion.io/";
            }
        }
        public GraphQLHttpClient GetGraphQLClient()
        {
            var graphQLHttp = new GraphQLHttpClient(url, new NewtonsoftJsonSerializer());
            graphQLHttp.HttpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);
            return graphQLHttp;
        }
        public GraphQLHttpClient LoginClient()
        {
            var graphQLHttp = new GraphQLHttpClient(url, new NewtonsoftJsonSerializer());
            return graphQLHttp;
        }
    }
}
