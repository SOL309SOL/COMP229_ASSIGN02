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
            Session["Name"] = "";
            Session["Age"] = "";
            Session["Price"] = "";
            Session["Suggestion"] = "";
            Session["Food"] = "";
            Session["HowOften"] = "";
            Session["Satisfaction"] = "";
            Session["Gender"] = "";
        }
        protected void CheckBox (object sender, ServerValidateEventArgs e)
        {
            e.IsValid = CheckBoxList1.Items[1].Selected;
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            
            Session["Name"] = TextBox1.Text;
            Session["Price"] = TextBox2.Text;
            Session["Suggestion"] = TextBox3.Text;
           
                for (int i = 0; i < CheckBoxList1.Items.Count; i++)
                {
                    if (CheckBoxList1.Items[i].Selected)
                    {
                        Session["Food"] += CheckBoxList1.Items[i].Text + ',';
                    }
                }

            for (int i =0; i< DropDownList2.Items.Count; i++)
            {
                if (DropDownList2.Items[i].Selected)
                {
                    Session["Age"] += DropDownList2.Items[i].Text;
                }
            }

            for (int a = 0; a < RadioButtonList2.Items.Count; a++)
            {
                if (RadioButtonList2.Items[a].Selected)
                {
                    Session["HowOften"] += RadioButtonList2.Items[a].Text;
                }
            }

            for (int a = 0; a < RadioButtonList3.Items.Count; a++)
            {
                if (RadioButtonList3.Items[a].Selected)
                {
                    Session["Gender"] += RadioButtonList3.Items[a].Text;
                }
            }

            for (int a = 0; a < RadioButtonList4.Items.Count; a++)
            {
                if (RadioButtonList4.Items[a].Selected)
                {
                    Session["Satisfaction"] += RadioButtonList4.Items[a].Text;
                }
            }


            Response.Redirect("Thankyou.aspx");
        }
    }
}