using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace GoldHunter
{
    public partial class Download : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UID"] == null)
            {
                Response.Redirect("Login.aspx", false);
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.ContentType = "application/exe";
            Response.AppendHeader("Content-Disposition", "attachment; filename=DataMiner.exe");
            localhost.Service1 s = new localhost.Service1();
            byte[] b1 = null;
            b1 = s.DownloadFile();
            Response.OutputStream.Write(b1, 0, b1.Length);
            Response.End();
        }
    }
}