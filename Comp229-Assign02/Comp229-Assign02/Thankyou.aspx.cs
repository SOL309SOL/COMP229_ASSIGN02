using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign02
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
               Label1.Text = Session["Name"].ToString();
            Label4.Text = Session["Age"].ToString();
            Label2.Text = Session["Price"].ToString();
            Label3.Text = Session["Suggestion"].ToString();
            
        }
    }
}