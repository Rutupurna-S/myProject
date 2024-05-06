using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace EHRMS
{
    public partial class UserProfile : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["dbConnectionString"].ConnectionString;
        SqlCommand cmd;
        DataTable dt;
        SqlDataAdapter sda;
        static String email;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                userProfile();
            }
        }
        public void userProfile( ) 
        {
            SqlConnection conn = new SqlConnection(constr);
            lblHealthId.Text = Session["PatId"].ToString();
            lblUserName.Text = Session["PatFname"].ToString();
            if (!String.IsNullOrEmpty(Session["Photo"].ToString()))
            {
                UserPhoto.ImageUrl = Session["Photo"].ToString();
            }
            else
            {
                UserPhoto.ImageUrl = @"..\\DAssets\\img\\UserAvtar.png";
            }
            conn.Open();
            sda = new SqlDataAdapter();
            dt = new DataTable();
            string query = "select * from Patients where PatientId='" + lblHealthId.Text.ToString() + "'";
            cmd = new SqlCommand(query, conn);
            cmd.CommandType = CommandType.Text;
            cmd.Connection = conn;
            sda.SelectCommand = cmd;
            sda.Fill(dt);
            cmd.ExecuteNonQuery();
            conn.Close();
            txtFName.Text = dt.Rows[0]["FirstName"].ToString();
            txtLName.Text = dt.Rows[0]["LastName"].ToString();
            DateTime dtt = DateTime.Parse(dt.Rows[0]["DOB"].ToString()).Date;
            //DateTime dtt = DateTime.ParseExact(dt.Rows[0]["DOB"].ToString(), "MM-dd-yyyy HH:mm:ss tt", CultureInfo.InvariantCulture);
            //lblDOB.Text = dtt.ToString("dd/M/yyyy",CultureInfo.InvariantCulture);
            //var dtt = dt.Rows[0]["DOB"].ToString();
            txtDob.Text = dtt.ToShortDateString();
            ddlBl.Text = dt.Rows[0]["BloodGroup"].ToString();
            ddlGen.Text = dt.Rows[0]["Gender"].ToString();
            email = txtMail.Text = dt.Rows[0]["Email"].ToString();
            txtAdd.Text = dt.Rows[0]["Address"].ToString();
            txtMob.Text = dt.Rows[0]["Mobile"].ToString();
            txtAdhaarno.Text = dt.Rows[0]["AdharNumber"].ToString();
        }

        protected void btnSaveChanges_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(constr);
            conn.Open();
            dt = new DataTable();
            sda = new SqlDataAdapter();
            String query = "Update Patients set FirstName='" + txtFName.Text.ToString() + "' , LastName='" + txtLName.Text.ToString() 
                + "', Mobile='" + txtMob.Text.ToString() + "',Address='" + txtAdd.Text.ToString() + "',Email='" + txtMail.Text.ToString() + "' where PatientId='" + lblHealthId.Text.ToString() + "'";
            cmd = new SqlCommand(query, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            String msgbody = "Dear " + txtFName.Text.ToString() + " your profile have been successfully updated !!!";
            SendSuccess(msgbody);
            lblMsg.Text = "Profile Updated Successfully.";
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard.aspx", false);
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
            mail.To.Add(email);
            mail.Subject = "Profile Update for CEHRMS";
            mail.Body = msgBody;
            smtp_Client.Port = Convert.ToInt32(System.Configuration.ConfigurationSettings.AppSettings["smtpPort"]);
            smtp_Client.Credentials = new System.Net.NetworkCredential(smtpUserName, smtpPassword);
            smtp_Client.EnableSsl = Convert.ToBoolean(System.Configuration.ConfigurationSettings.AppSettings["enableSSL"]);
            smtp_Client.Send(mail);

        }

        protected void btnEditProfile_Click(object sender, EventArgs e)
        {
            btnEditProfile.Visible = false;
            btnSaveChanges.Visible = true;
            txtFName.Enabled = true;
            txtLName.Enabled = true;
            txtMob.Enabled = true;
            txtAdd.Enabled = true;
            txtMail.Enabled = true;
        }
    }
}