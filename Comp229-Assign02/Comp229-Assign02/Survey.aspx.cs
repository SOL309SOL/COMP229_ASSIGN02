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
          
            Configuration config = WebConfigurationManager.OpenWebConfiguration("~");
            
            config.AppSettings.Settings.Add("thankyouMessage", "Email: "+TextBox1.Text+"<br/>");
            config.AppSettings.Settings.Add("thankyouMessage", "Price: " + TextBox2.Text + "<br/>");
            //config.AppSettings.Settings.Add("thankyouMessage", "Gender: " + RadioButtonList3.Text + "<br/>");
            //config.AppSettings.Settings.Add("thankyouMessage", "Age: " + DropDownList2.SelectedValue + "<br/>");
            //config.AppSettings.Settings.Add("thankyouMessage", "Visit Time: " + RadioButtonList2.Text + "<br/>");
            //config.AppSettings.Settings.Add("thankyouMessage", "Rate: " + RadioButtonList4.Text + "<br/>");
            config.AppSettings.Settings.Add("thankyouMessage", "Comment: " + TextBox3.Text + "<br/>");

            config.Save();
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            

            Response.Redirect("thankyou.aspx");
            
          

        }
    }
}