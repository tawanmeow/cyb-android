using System;
using System.Collections.Generic;
using Newtonsoft.Json.Linq;
using SEALMobile.Services;
using Xamarin.CommunityToolkit.Extensions;
using Xamarin.CommunityToolkit.UI.Views;
using Xamarin.Forms;
using ZXing.Mobile;
using ZXing.Net.Mobile.Forms;

namespace SEALMobile.Views
{
    public partial class MyScanner : Popup
    {
        public MyScanner()
        {
            scanner = new ZXingScannerView();
            InitializeComponent();
        }

        void Button_Clicked(System.Object sender, System.EventArgs e)
        {
            if (scanner.Result != null)
            {
                Dismiss(scanner.Result);
            }
            else
            {
                scanner.IsScanning = false;
                Dismiss("closed");
            }

        }

        void scanner_OnScanResult(ZXing.Result result)
        {
            Device.BeginInvokeOnMainThread(() =>
            {

                if (result != null)
                {
                    try
                    {
                        var res = result.Text;
                        JObject hostJson = JObject.Parse(res);
                        Host host = hostJson.ToObject<Host>();

                        if (host.hostname != null && host.hostname != "" &&
                        host.hostIP != null && host.hostIP != "" &&
                        host.endpoint != null && host.endpoint != "" &&
                        host.oneTimePassword != null && host.oneTimePassword != "")
                        {
                            label.Text = "Scanning Complete";
                            label_scan.IsVisible = true;

                            //label_scan.Text = result.Text;
                            label_scan.Text = "Success Pair Edge Device";

                            scanner.IsScanning = false;
                            scanner.IsVisible = false;
                        }
                    }
                    catch
                    {
                        Console.WriteLine("AAA");
                    }

                }
            });

        }
    }
}