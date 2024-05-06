using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EHRMS
{
    public partial class PathoReport : System.Web.UI.Page
    {
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
            details();
        }

        protected void btnDownload_Click(object sender, EventArgs e)
        {
           
        }
        public void details()
        {
            lblPatientId.Text = Session["PatId"].ToString();
            lblPatientName.Text = Session["PatFname"].ToString();
        }
    }
}