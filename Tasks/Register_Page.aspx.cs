using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tasks
{
    public partial class Register_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // write
        protected  void register_Click(object sender, EventArgs e)
        {



            string filePath = Server.MapPath("data2.txt");
            if (!File.Exists(filePath))
            {
                //File.Create(filePath);

                using (StreamWriter sw = File.CreateText(filePath))
                {
                    sw.WriteLine(File.Create(filePath));
                    sw.WriteLine($"{username.Text} {email.Text} {pass.Text}");

                }

            }

            else
            {
                using (StreamWriter sw = new StreamWriter(filePath, true))
                {
                    sw.WriteLine($"{username.Text} {email.Text} {pass.Text}"); // to print the user info in the text file
                    Response.Redirect("login_Page.aspx");
                   

                }


                


                //string[] users = File.ReadAllLines(filePath);

                //foreach (string user in users)
                //{
                //    string[] userData = user.Split(' ');

                //    if ($"{username.Text}" == userData[0] && $"{email.Text}" == userData[1])
                //    {
                //        result.Text = "The User Is Already Registered";
                //        result.Visible = true;
                //    }
                //    else
                //    {
                //        result.Text = "Registere Succesfully";
                //        result.Visible = true;

                //    }



                //}
            }

            
                    

            // Output success message and redirect after a short delay
            //Response.Write("<script>");
            //Response.Write("alert('Register successfully! Redirecting to login page...');");
            //Response.Write("setTimeout(function() { window.location = 'loginPage.aspx'; }, 2000);");
            //Response.Write("</script>");





        }
    }
}
