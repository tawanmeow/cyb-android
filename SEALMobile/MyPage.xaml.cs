using System;
using System.Text;
using System.Collections.Generic;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using SEALMobile.Views;
using Xamarin.Forms;

namespace SEALMobile
{
    public partial class MyPage : ContentPage
    {
        public MyPage()
        {
            InitializeComponent();

            //var res = "{ \"hostname\":\"eak\",\"hostIP\":\"http://localhost:9000\",\"endPoint\":\"/import/contextAndPublicKey\",\"oneTimePassword\":\"gogeEaTNdTeUYT3Wan5lSSTe8bRkUulFQ7RhsZCX8yWzl7mAwt\"} ";
            //var res = "{ \"hostIP\":\"http://localhost:9000\",\"endPoint\":\"/import/contextAndPublicKey\",\"oneTimePassword\":\"gogeEaTNdTeUYT3Wan5lSSTe8bRkUulFQ7RhsZCX8yWzl7mAwt\"} ";
            var res = "HELEELELEL";

            try
            {
                var jsonString = JsonConvert.DeserializeObject(res);




                Console.WriteLine(jsonString.ToString());
                Console.WriteLine(res);

                JObject hostJson = JObject.Parse(res);
                Host host = hostJson.ToObject<Host>();

                Console.WriteLine(host.hostname == null);
                Console.WriteLine(host.hostIP);
            }
            catch
            {
                Console.WriteLine("AAAA");
            }

        }
        async void Button_Clicked(object sender, System.EventArgs e)
        {
            await Navigation.PushAsync(new LoginTest());

        }
    }
}
