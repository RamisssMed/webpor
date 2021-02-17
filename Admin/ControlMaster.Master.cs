using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;


namespace WebPro.Admin
{
    public partial class ControlMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetNoStore();


            string qs = Request.QueryString["UID"];


         /*   if (Session["Login"] == null)
            {
                LabWelcome.Text = Session["Login"].ToString();
            }
          */
        }
    }
}