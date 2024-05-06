using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace EHRMS
{
    public partial class Dashboard : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["dbConnectionString"].ConnectionString;
        SqlCommand cmd;
        DataTable dt;
        SqlDataAdapter sda;
        protected void Page_Load(object sender, EventArgs e)
        {
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
            TotalVisit();
        }
        public void TotalVisit()
        {
            try
            {
                SqlConnection conn = new SqlConnection(constr);
                conn.Open();
                sda = new SqlDataAdapter();
                dt = new DataTable();
                string query = "select COUNT(*) as Total_Visit from Appointments where PatientId = '" + lblHealthId.Text.ToString() + "'";
                cmd = new SqlCommand(query, conn);
                cmd.CommandType = CommandType.Text;
                cmd.Connection = conn;
                sda.SelectCommand = cmd;
                sda.Fill(dt);
                if(dt.Rows.Count > 0)
                {
                    lblTotalVisit.Text = dt.Rows[0]["Total_Visit"].ToString();
                }
                else
                {
                    lblTotalVisit.Text = "0";
                }
                cmd.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception ex)
            {

            }

        }
    }
}