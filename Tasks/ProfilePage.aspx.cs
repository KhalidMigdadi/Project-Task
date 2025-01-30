﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Tasks
{
    public partial class ProfilePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void searchBtn_Click(object sender, EventArgs e)
        {
            string email = searchTxt.Text.Trim(); // Get the email to search for
            string filePath = Server.MapPath("data2.txt");

            if (File.Exists(filePath))
            {
                string[] data = File.ReadAllLines(filePath);
                foreach (string line in data)
                {
                    string[] parts = line.Split(' ');
                    if (parts.Length >= 3 && parts[1].Trim() == email) // Check if email matches
                    {
                        // Populate the fields with user data
                        name.Text = parts[0].Trim(); // Name
                        Email.Text = parts[1].Trim(); // Email
                        Password.Text = parts[2].Trim(); // Password
            
                        //gender.SelectedValue = parts[5].Trim(); // Gender

                        break; // Exit the loop once the user is found
                    }
                }
            }
            else
            {
                Response.Write("<script>alert('User data file not found!');</script>");
            }
        }

        protected void editBtn_Click(object sender, EventArgs e)
        {
            string filePath = Server.MapPath("data2.txt");
            string email = searchTxt.Text.Trim();

            if (File.Exists(filePath))
            {
                string[] data = File.ReadAllLines(filePath);
                bool userFound = false;

                for (int i = 0; i < data.Length; i++)
                {
                    string[] parts = data[i].Split(' ');
                    if (parts.Length >= 3 && parts[1].Trim() == email) // Check if email matches
                    {
                        // Update the user data
                        data[i] = $"{name.Text.Trim()} {Email.Text.Trim()} {Password.Text.Trim()}";
                        userFound = true;
                        break;
                    }
                }

                if (userFound)
                {
                    File.WriteAllLines(filePath, data); // Save the updated data
                    Response.Write("<script>alert('User data updated successfully!');</script>");
                }
                else
                {
                    Response.Write("<script>alert('User not found!');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('User data file not found!');</script>");
            }
        }
    }
}