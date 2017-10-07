using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign02
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            string value = System.Configuration.ConfigurationManager.AppSettings["thankyouMessage"];
            Label1.Text = value;


        }
    }
}