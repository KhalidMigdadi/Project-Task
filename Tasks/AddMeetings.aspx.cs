using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tasks
{
    public partial class AddMeetings : System.Web.UI.Page
    {
        protected global::System.Web.UI.WebControls.TextBox capacity;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            string filePath = Server.MapPath("meeting.txt");
            if (!File.Exists(filePath))
            {
                File.CreateText(filePath);
            }

            using (StreamWriter sw = new StreamWriter(filePath, true))
            {
                sw.WriteLine($"{id.Text} {name.Text} {location.Text} {capacity.Text}");
            }
        }
    }
}
