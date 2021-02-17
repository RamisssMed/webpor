using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPro
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Title = "تسجيل الدخول";
            Response.Cache.SetNoStore();
/*
            Response.Write(System.Security.Principal.WindowsIdentity.GetCurrent().Name + "<br/>");
            Response.Write(User.Identity.IsAuthenticated.ToString() + "<br/>");
            Response.Write(User.Identity.AuthenticationType + "<br/>");
            Response.Write(User.Identity.Name);

            if(User.IsInRole("Utilisateure "))
            {
                Response.Write("Rols Acces");
            }

            else
            {
            }
*/
        }

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MinisterConnectionString"].ToString());



        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string sql = "select * from Login where Name=@Name and Password=@Password and LoginType=@LoginType";

            // SqlCommand cmd = new SqlCommand("CheckLogin", conn);
            //   cmd.CommandType = CommandType.StoredProcedure;

            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@Name", txtName.Text);
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
            cmd.Parameters.AddWithValue("@LoginType", DropDownList1.SelectedValue);

            SqlDataReader r;
            conn.Open();
            r = cmd.ExecuteReader();

            if (r.HasRows)
            {
                string LoginType = "";
                while (r.Read())
                {
                    Session["Login"] = r["ID"].ToString();
                    LoginType = r["LoginType"].ToString();
                }
                conn.Close();
                if (LoginType == "1")
                {
                    FormsAuthentication.RedirectFromLoginPage(txtName.Text, CheckBoxRememberMe.Checked);
                    //            Response.Redirect("~/Admin/HomeMaster.aspx");
                }
            }
            else
            {
                laMessage.Text = " خطا في الدخول ";
            }
            conn.Close();
        }

    }
}