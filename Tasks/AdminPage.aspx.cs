﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tasks
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAll_Click(object sender, EventArgs e)
        {
            Response.Redirect("addBook.aspx");
        }

        protected void btnMeet_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddMeetings.aspx");
        }
    }
}