using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GoldHunter
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UID"] == null)
            {
                Response.Redirect("Login.aspx", false);
            }
            else
            {
                Session.Remove("UID");
                Session.Remove("Log");
                Session["logout"] = "1";
                Response.Redirect("login.aspx", false);
            }
        }
    }
}