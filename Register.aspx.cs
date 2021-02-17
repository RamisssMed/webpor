using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPro
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string pass = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text,"MD5");

            string pass2 = FormsAuthentication.HashPasswordForStoringInConfigFile("123", "MD5");

            if(pass == pass2)
            {
                Response.Write("Good");
            }
            else
            {
                Response.Write("bad");         
            }                     

        }

        protected void Button1_Click(object sender, EventArgs e)
        {    
           
            string str1 = Console.ReadLine();
            str1= TextBox1.Text;

            string str2 = Console.ReadLine();
            str2 = TextBox2.Text;
            
             int num1 = Convert.ToInt32(str1);
             int num2 = Convert.ToInt32(str2);
             int r = 0;

             string str3 = TextBox3.Text;
             string str4 = TextBox4.Text;                 
            
            if (num1 == num2)          
            {               
                TextBox3.Text = r.ToString();
                TextBox4.Text = r.ToString();                           
            }

            else  if (num1 >= num2)
            {
                TextBox3.Text = num1.ToString();
                TextBox4.Text = r.ToString();
            }

            else if (num2 >= num1)
            {
                TextBox4.Text = num2.ToString();
                TextBox3.Text = r.ToString();
            }
                     
                      
           
            
        }
    }
}