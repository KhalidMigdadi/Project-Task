using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tasks
{
    public partial class PowerOfStudents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAll_Click(object sender, EventArgs e)
        {
            Response.Redirect("AllBookTable.aspx");
        }

        protected void btnMeet_Click(object sender, EventArgs e)
        {
            Response.Redirect("MeetingsRoomTable.aspx");
        }

        protected void searchBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("SreachBook.aspx");
        }

        protected void prof_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProfilePage.aspx");
        }
    }
}