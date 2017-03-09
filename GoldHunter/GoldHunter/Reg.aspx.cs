using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace GoldHunter
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UID"]!=null)
            {
                Response.Redirect("Home.aspx", false);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            localhost.Service1 s = new localhost.Service1();
            if (HiddenField1.Value=="1")
            {
                int respval = s.InsertReg(TextBox1.Text, TextBox3.Text, TextBox2.Text, DropDownList1.SelectedValue.ToString(), TextBox5.Text, TextBox6.Text, DropDownList2.SelectedValue.ToString(), TextBox7.Text.ToLower().Trim());
                if (respval == 0)
                    error.InnerText = "*Registration unsuccessful...Please try again later!";
                else
                {
                    Session["reg"]="1";
                    Response.Redirect("Login.aspx",false);
                }
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            localhost.Service1 s = new localhost.Service1();
            if (Regex.IsMatch(TextBox1.Text,"^[a-z0-9]{5,}$"))
            {
                int respval = s.UserCheck(TextBox1.Text);
                if (respval == 1)
                {
                    userun.InnerText = "*Username is not available";
                    userun2.InnerText = "";
                    HiddenField1.Value = "0";
                }
                else
                {
                    userun2.InnerText = "*Username available";
                    userun.InnerText = "";
                    HiddenField1.Value = "1";
                }
            }
            else if (TextBox1.Text == "")
            {
                userun.InnerText = "";
                userun2.InnerText = "";
                HiddenField1.Value = "0";
            }
            else
            {
                userun.InnerText = "*Username should have only lowercase alphanumerics(min 5)";
                userun2.InnerText = "";
                HiddenField1.Value = "0";
            }
        }

    }
}