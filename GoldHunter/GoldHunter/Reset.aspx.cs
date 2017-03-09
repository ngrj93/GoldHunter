using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GoldHunter
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UID"] != null)
            {
                Response.Redirect("Home.aspx", false);
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            localhost.Service1 s = new localhost.Service1();
            if(TextBox1.Text!="")
            {
                int respval = s.UserCheck(TextBox1.Text);
                if (respval == 0)
                {
                    userun.InnerText = "*Username does not exist";
                }
                else
                {
                    userun.InnerText = "";
                    Session["username"] = TextBox1.Text;
                    string sec=s.Fetch(TextBox1.Text);
                    string [] secqa=sec.Split('~');
                    Session["question"] = secqa[0];
                    Session["answer"] = secqa[1];
                    TextBox1.Visible = false;
                    TextBox3.Text = secqa[0];
                    TextBox3.Visible = true;
                    TextBox4.Visible = true;
                }
            }
            else
            {
                userun.InnerText = "";
            }
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {
            if (TextBox4.Text != "")
            {
                if(TextBox4.Text.ToLower().Trim()==(string)Session["answer"])
                {
                    userun.InnerText = "";
                    TextBox2.Visible = true;
                    TextBox5.Visible = true;
                    Button1.Visible = true;
                    TextBox3.Visible = false;
                    TextBox4.Visible = false;
                    Session.Remove("answer");
                    Session.Remove("question");
                }
                else
                {
                    userun.InnerText = "*Incorrect Answer!";
                }
            }
            else
            {
                userun.InnerText = "";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            localhost.Service1 s = new localhost.Service1();
            if (s.ResetPassword((string)Session["username"], TextBox2.Text))
            {
                Session["reset"] = "true";
                Response.Redirect("Login.aspx", false);
            }
            else
            {
                Response.Write("<script>alert(\"Unexpected error\")</script>");
            }
        }
    }
}