using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GoldHunter
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Log"] == null)
            {
                Response.Write("<script src=\"js/modernizr.custom.js\"></script>");
                Session["Log"] = true;
            }
            if (((string)Session["reg"]) == "1")
            {
                error.InnerText = "Registration Successful!";
                Session.Remove("reg");
            }
            if (Session["UID"] != null)
            {
                Response.Redirect("Home.aspx",false);
            }
            if ((string)Session["logout"] == "1")
            {
                logout.InnerText = "Successfully logged out!";
                Session.Remove("logout");
            }
            else if ((string)Session["reset"] == "true")
            {
                logout.InnerText = "Password reset successful!";
                Session.Remove("reset");
                Session.Remove("username");
            }
            else
            {
                logout.InnerText = "";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reg.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            localhost.Service1 s = new localhost.Service1();
            int respval=s.LoginValidate(TextBox1.Text, TextBox2.Text);
            if (respval == 0)
                error.InnerText = "*Please check your Username and Password";
            else
            {
                Session["UID"] = TextBox1.Text;
                Response.Redirect("Home.aspx",false);
            }        
        }
    }
}