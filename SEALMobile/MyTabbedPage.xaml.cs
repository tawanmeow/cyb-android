using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SEALMobile.Views;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace SEALMobile
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class MyTabbedPage : TabbedPage
    {
        public MyTabbedPage ()
        {
            InitializeComponent();

            //Children.Add(new MyPage());
            //Children.Add(new UserHomePage());
        }
    }
}
