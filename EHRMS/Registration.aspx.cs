using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Net.Mail;
using System.Security.Policy;
using System.Drawing;
using System.Drawing.Imaging;
using System.Xml.Linq;
using ZXing;
using Microsoft.Ajax.Utilities;
using System.Text.RegularExpressions;
using System.Runtime.Remoting.Messaging;

namespace EHRMS
{

    public partial class Registration : System.Web.UI.Page
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

        protected void btnPatientRegister_Click(object sender, EventArgs e)
        {
            try
            {
                bool f = ValidateName(txtFName.Text.ToString());
                bool l = ValidateName(txtLName.Text.ToString());
                bool adhaar = ValidateAdhaar(txtAdhaarno.Text.ToString());
                bool BoolEM = ValidateEmail(txtMail.Text.ToString());
                bool BoolNO = ValidateNo(txtMob.Text.ToString());
                if (!(f && l && adhaar && BoolEM && BoolNO))
                {
                    lblMsg.Text = " Please Enter correct credentials";
                    return;
                }
                if (!BoolEM)
                {
                    lblMsg.Text = "Please enter valid Email";
                    return;
                }
                if (!BoolNO)
                {
                    lblMsg.Text = "PLease Enter Valid Phone number";
                    return;
                }
                if (!adhaar)
                {
                    lblMsg.Text = "Please Enter Valid Adhaar Number";
                    return;
                }
                if (!(f || l))
                {
                    lblMsg.Text = "Please Enter Valid Name";
                    return;
                }
                bool DVC = DuplicateValueCheck();
                if (!DVC)
                {
                    lblMsg.Text = "User already existing ";
                    return;
                }
                SqlConnection conn = new SqlConnection(constr);
                String PatientName = txtFName.Text.ToString();
                String Adhaarno = txtAdhaarno.Text.ToString();
                String PatientId = PatientName.Substring(0, 2) + Adhaarno.Substring(Adhaarno.Length - 4);
                Session["PatID"] = PatientId;
                String UserName = txtFName.Text.ToString() + " " + txtLName.Text.ToString();
                Session["UName"] = UserName;
                String photo = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/UserPhoto/" + photo));
                String image = "../UserPhoto/" + photo;
                //Session["image"] = image;
                SqlCommand cmd = new SqlCommand("REGISTRATION", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Photo", image);
                cmd.Parameters.AddWithValue("@PATID", PatientId);
                cmd.Parameters.AddWithValue("@USERN", UserName);
                cmd.Parameters.AddWithValue("@FNAME", txtFName.Text.ToString());
                cmd.Parameters.AddWithValue("@LNAME", txtLName.Text.ToString());
                cmd.Parameters.AddWithValue("@DOB", txtDob.Text.ToString());
                cmd.Parameters.AddWithValue("@TXTGEN", ddlGen.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@TXTBL", ddlBl.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@TXTADHAARNO", txtAdhaarno.Text.ToString());
                cmd.Parameters.AddWithValue("@TXTMAIL", txtMail.Text.ToString());
                cmd.Parameters.AddWithValue("@TXTMOB", txtMob.Text.ToString());
                cmd.Parameters.AddWithValue("@TXTADD", txtAdd.Text.ToString());
                cmd.Parameters.AddWithValue("@TXTPASS", Encrypt(txtPass.Text.ToString()));
                conn.Open();
                int res = cmd.ExecuteNonQuery();
                if (res == 0)
                {
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "alert", "alert('Your Data is not Saved!!!');", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "alert", "alert('Registration Successful!!!');", true);

                }
                conn.Close();
                String msgBody = "Welcome to our portal CEHRMS. Dear " + txtFName.Text.ToString() + " You have successfully registered, Your HealthID is : " + PatientId + ", User Name is : " + UserName + " & Password is : " + txtPass.Text.ToString();
                SendSuccess(msgBody);
                //Response.Redirect("Login.aspx", false);
                GenerateHealthCard();
            }
            catch (Exception ex)
            {
                System.Console.WriteLine(ex.Message);
                lblMsg.Text = "Oops!! Something went wrong!!";
            }

        }
        private void SendSuccess(String msgBody)
        {
            string smtpUserName;
            string smtpPassword;

            MailMessage mail = new MailMessage();
            SmtpClient smtp_Client = new SmtpClient(System.Configuration.ConfigurationSettings.AppSettings["smtpClient"]);

            smtpUserName = System.Configuration.ConfigurationSettings.AppSettings["smtpUserName"];
            smtpPassword = System.Configuration.ConfigurationSettings.AppSettings["smtpPassword"];
            mail.From = new MailAddress(smtpUserName);
            mail.To.Add(txtMail.Text.Trim());
            mail.Subject = "Registration Success for CEHRMS";
            mail.Body = msgBody;
            smtp_Client.Port = Convert.ToInt32(System.Configuration.ConfigurationSettings.AppSettings["smtpPort"]);
            smtp_Client.Credentials = new System.Net.NetworkCredential(smtpUserName, smtpPassword);
            smtp_Client.EnableSsl = Convert.ToBoolean(System.Configuration.ConfigurationSettings.AppSettings["enableSSL"]);
            smtp_Client.Send(mail);

        }
        public void GenerateHealthCard()
        {
            Session["User"] = $"Name:{Session["UName"].ToString()}, HealthId:{Session["PatID"].ToString()}, Date Of Birth:{txtDob.Text.ToString()}, Gender:{ddlGen.SelectedValue.ToString()}, Phone:{txtMob.Text.ToString()}";
            Session["dob"] = txtDob.Text.ToString();
            Session["Gender"] = ddlGen.SelectedValue.ToString();
            Session["Phone"] = txtMob.Text.ToString();
            Response.Redirect("HealthCardPage.aspx", false);
        }
        public bool ValidateName(String name)
        {
            if (name.Any(char.IsDigit) || name.IsNullOrWhiteSpace())
            {
                return false;

            }
            else
            {
                return true;
            }
        }
        public bool ValidateEmail(String email)
        {
            Regex rex = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");
            Match mtc = rex.Match(email);
            if (mtc.Success || !(email.IsNullOrWhiteSpace()))
            {
                return true;
            }
            else
            {
                lblMsg.Text = "Enter valid Email";
                return false;
            }
        }
        public bool ValidateAdhaar(String ad)
        {
            if (ad.Length != 12 || ad.Any(char.IsLetter) || ad.IsNullOrWhiteSpace())
            {
                lblMsg.Text = "Enter valid Adhaar number";
                return false;
            }
            else
            {
                return true;
            }
        }
        public bool ValidateNo(String num)
        {
            if (num.Any(char.IsLetter) || num.Length == 10 || !(num.IsNullOrWhiteSpace()))
            {
                return true;
            }
            else
            {
                lblMsg.Text = "Enter a valid Phone number";
                return false;
            }

        }
        public bool DuplicateValueCheck()
        {
            SqlConnection conn = new SqlConnection(constr);
            conn.Open();
            sda = new SqlDataAdapter();
            dt = new DataTable();
            string query = "select * from Patients where AdharNumber='" + txtAdhaarno.Text.ToString() + "' or Email='" + txtMail.Text.ToString() + "' or Mobile='" + txtMob.Text.ToString() + "'";
            cmd = new SqlCommand(query, conn);
            cmd.CommandType = CommandType.Text;
            cmd.Connection = conn;
            sda.SelectCommand = cmd;
            sda.Fill(dt);
            cmd.ExecuteNonQuery();
            conn.Close();
            if (dt.Rows.Count > 0)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

    }

}
