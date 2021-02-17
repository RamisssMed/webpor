using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPro.Admin.Control
{
    public partial class Category : System.Web.UI.UserControl
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MinisterConnectionString"].ToString());


        protected void Page_Load(object sender, EventArgs e)
        {
           
           
        }
    

        protected void btnSelect_Click(object sender, EventArgs e)
        {
            try
            {
        //        string gid = Guid.NewGuid().ToString();

        //        string gid = Convert.ToString(Guid.NewGuid());
                SqlDataSource1.InsertParameters["Name"].DefaultValue = txtName.Text;
    //            SqlDataSource1.InsertParameters["UID"].DefaultValue = gid;
                SqlDataSource1.Insert();

                laMessage.Text = "تمت الاضافة بنجاح";
                txtName.Text = "";
                txtName.Focus();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                laMessage.Text = "تمت فشل الاضافة";
            }
        }
             

    }
}
