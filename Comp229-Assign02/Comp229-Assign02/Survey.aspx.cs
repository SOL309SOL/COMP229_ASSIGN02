using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Web.Configuration;


namespace Comp229_Assign02
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //ConfigurationManager.AppSettings.Add("surveyEmail", txtBox1.Text);
            //Configuration config = WebConfigurationManager.OpenWebConfiguration("/");
            //string oldValue = config.AppSettings.Settings["thankyouMessage"].Value;
            //config.AppSettings.Settings["thankyouMessage"].Value = txtBox1.Text;
            //config.Save(ConfigurationSaveMode.Modified);


            Configuration config = WebConfigurationManager.OpenWebConfiguration("~");
            config.AppSettings.Settings.Add("thankyouMessage", txtBox1.Text);
            config.Save();

            //TextBox1.Text = Application("thankyouMessage").ToString()

        }
    }
}