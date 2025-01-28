using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tasks
{
    public partial class Login_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            string filePath = Server.MapPath("data2.txt");

            string[] users = File.ReadAllLines(filePath); // for read

            foreach (string user in users)
            {
                string[] userData = user.Split(' ');  
                
                if (userData[1] == $"{email.Text}" && userData[2] == $"{pass.Text}")
                {
                    Response.Redirect("PowerOfStudents.aspx");
                    result.Text = "Logged Successfully";
                    result.Visible = true;
                }
            }
        }

       
    }
}