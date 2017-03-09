using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace GoldHunter
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UID"] == null)
            {
                Response.Redirect("Login.aspx", false);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            StreamWriter s = new StreamWriter(@"C:\Users\Nagaraj\documents\visual studio 2012\Projects\GoldHunter\GoldHunter\Feedback.txt", true);
            s.WriteLine((string)Session["UID"] + "~" + TextBox1.Text + "\n");
            s.Close();
            Label1.Visible = true;
        }
    }
}