using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace GoldHunterSP
{
    /// <summary>
    /// Summary description for Service1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class Service1 : System.Web.Services.WebService
    {

        [WebMethod]
        public int LoginValidate(string username,string password)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
            SqlCommand cmd = new SqlCommand();
            SqlDataReader r;
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = string.Format("select * from login where Username='{0}' and Password='{1}'", username, password);
            r=cmd.ExecuteReader();
            bool s = r.HasRows;
            con.Close();
            if (s)
                return 1;
            else
                return 0;
        }

        [WebMethod]
        public int InsertReg(string username, string password,string email,string occupation,string number,string interests,string security,string answer)
        {
            int s;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = string.Format("insert into login values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}')", username, password, email, occupation, number, interests, security, answer);
            try
            {
                s = cmd.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                return 0;
            }
            finally
            {
                con.Close();
            }
            if (s != 0)
                return 1;
            else
                return 0;
        }

        [WebMethod]
        public int UserCheck(string username)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
            SqlCommand cmd = new SqlCommand();
            SqlDataReader r;
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = string.Format("select * from login where Username='{0}'", username);
            r = cmd.ExecuteReader();
            bool s = r.HasRows;
            con.Close();
            if (s)
                return 1;
            else
                return 0;
        }

        [WebMethod]
        public string Fetch(string username)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
            SqlCommand cmd = new SqlCommand();
            SqlDataReader r;
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = string.Format("select * from login where Username='{0}'", username);
            r = cmd.ExecuteReader();
            string result = "";
            if (r.HasRows)
            {
                r.Read();
                string question = r.GetString(6);
                string answer = r.GetString(7);
                result = question + "~" + answer;
            }
            con.Close();
            return result;
        }

        [WebMethod]
        public bool ResetPassword(string username, string password)
        {
            int s;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = string.Format("update login set Password='{0}' where Username='{1}'", password, username);
            try
            {
                s = cmd.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                return false;
            }
            finally
            {
                con.Close();
            }
            if (s != 0)
                return true;
            else
                return false;
        }

        [WebMethod]
        public byte[] DownloadFile()
        {
            FileStream fs1 = null;
            fs1 = System.IO.File.Open(@"C:\Users\Nagaraj\documents\visual studio 2012\Projects\GoldHunterSP\GoldHunterSP\DataMiner.exe", FileMode.Open, FileAccess.Read);
            byte[] b1 = new byte[fs1.Length];
            fs1.Read(b1, 0, (int)fs1.Length);
            fs1.Close();
            return b1;
        }
    }
}