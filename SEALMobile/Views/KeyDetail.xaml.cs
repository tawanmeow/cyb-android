using System;
using System.Collections.Generic;
using System.IO;
using SEALMobile.Models;
using Xamarin.Forms;
namespace SEALMobile.Views
{
    public partial class KeyDetail : ContentPage
    {
        Project project;
        public KeyDetail(Project pj)
        {
            InitializeComponent();
            project = pj;
            BindingContext = project;
            var projectid = project.projectid;
            var documents = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            var directoryname = Path.Combine(documents, projectid);

            if (!Directory.Exists(directoryname))
            {
                Directory.CreateDirectory(directoryname);
            }

            var skPath = Path.Combine(directoryname, "secretKey.txt");
            var rlkPath = Path.Combine(directoryname, "relinKeys.txt");
            var pkPath = Path.Combine(directoryname, "publicKey.txt");
            var cotPath = Path.Combine(directoryname, "context.txt");

            var sk = File.ReadAllText(skPath);
            var rlk = File.ReadAllText(rlkPath);
            var pk = File.ReadAllText(pkPath);
            var cot = File.ReadAllText(cotPath);

            Console.Write(cot.Length);

            var firstChar = 15;
            var lastChar = 15;

            KeyCode.Text = cot.Substring(0, firstChar) + "...\n" + cot.Substring((cot.Length - lastChar), lastChar);
            PublicKey.Text = pk.Substring(0, firstChar) + "...\n" + pk.Substring((pk.Length - lastChar), lastChar);
            PrivateKey.Text = sk.Substring(0, firstChar) + "...\n" + sk.Substring((sk.Length - lastChar), lastChar);
            RelinearKey.Text = rlk.Substring(0, firstChar) + "...\n" + rlk.Substring((rlk.Length - lastChar), lastChar);


        }
        void Handle_Override(object sender, System.EventArgs e)
        {
            Navigation.PushAsync(new KeyGeneratorPage(project), true);
        }
    }
}

