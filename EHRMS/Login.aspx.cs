using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EHRMS
{
    public partial class Login : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["dbConnectionString"].ConnectionString;
        SqlCommand cmd;
        DataTable dt;
        SqlDataAdapter sda;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private string Encrypt(string clearText)
        {
            string EncryptionKey = "MAKV2SPBNI99212";
            byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(clearBytes, 0, clearBytes.Length);
                        cs.Close();
                    }
                    clearText = Convert.ToBase64String(ms.ToArray());
                }
            }
            return clearText;
        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(constr);
                if (ddlUserType.SelectedValue == "1")//UserType is Patient
                {
                    conn.Open();
                    sda = new SqlDataAdapter();
                    dt = new DataTable();
                    string query = "select * from Patients where PatientId='" + txtUser.Text.ToString() + "' and Password='" + Encrypt(TxtPass.Text.Trim()) + "'";
                    cmd = new SqlCommand(query, conn);
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = conn;
                    sda.SelectCommand = cmd;
                    sda.Fill(dt);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    if (dt.Rows.Count > 0)
                    {
                        Session["PatId"] = dt.Rows[0]["PatientId"].ToString();
                        Session["PatFname"] = dt.Rows[0]["FirstName"].ToString();
                        Session["Photo"] = dt.Rows[0]["Photo"];
                        Session["Email"] = dt.Rows[0]["Email"];
                        Response.Redirect("Dashboard.aspx", false);
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "msg", "alert('Invalid Login Detail');", true);
                    }

                }
                if (ddlUserType.SelectedValue == "2")
                {
                    //doctor
                }
                else
                {
                    //admin
                }

            }
            catch (Exception ex)
            {
                lblMsg.Text = "OOPS!";
            }

        }
    
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("INDEX.aspx",false);
        }
    }
}