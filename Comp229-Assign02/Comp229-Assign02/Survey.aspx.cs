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
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            Session["Name"] = TextBox1.Text;
            Session["Price"] = TextBox2.Text;
            Session["Suggestion"] = TextBox3.Text;
            Session["Age"] = DropDownList2.Items[DropDownList2.SelectedIndex].Value;
            
            Response.Redirect("Thankyou.aspx");
        }
    }
}