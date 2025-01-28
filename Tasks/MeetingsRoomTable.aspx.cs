using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tasks
{
    public partial class MeetingsRoom : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string filePath = Server.MapPath("meeting.txt");
            AddHeader();
            AddRow(filePath);
        }


        private void AddHeader()
        {
            // how can i add cells to the header 

            // first we need to creat the row to add the cell 

            TableHeaderRow tableHeaderRow = new TableHeaderRow();
            //TableHeaderCell headerCell = new TableHeaderCell();
            //tableHeaderRow.Cells.Add(headerCell { Text = });
            tableHeaderRow.Cells.Add(new TableHeaderCell { Text = "Room ID" });
            tableHeaderRow.Cells.Add(new TableHeaderCell { Text = "Room Name" });
            tableHeaderRow.Cells.Add(new TableHeaderCell { Text = "Room Location" });
            tableHeaderRow.Cells.Add(new TableHeaderCell { Text = "Room Capacity" });

            DynamicTable.Rows.Add(tableHeaderRow);



        }


        private void AddRow(string filePath)
        {
            if (!File.Exists(filePath))
            {
                File.CreateText(filePath);
            }

            string[] lines = File.ReadAllLines(filePath); 


            foreach (string line in lines)
            {
                string[] columns = line.Split(' ');

                if (lines.Length == 0)
                {
                    // Handle empty file case
                    TableRow errorRow = new TableRow();
                    TableCell errorCell = new TableCell
                    {
                        Text = "Lines are empty.",
                        ColumnSpan = 4,
                        CssClass = "text-center text-danger"
                    };
                    errorRow.Cells.Add(errorCell);
                    DynamicTable.Rows.Add(errorRow);
                    return;
                }


                if (columns.Length == 4)
                {
                    TableRow row = new TableRow();

                    foreach (string columnValue in columns)
                    {
                        TableCell cell = new TableCell();
                        cell.Text = columnValue;
                        row.Cells.Add(cell);

                    }

                    DynamicTable.Rows.Add(row);
                }

                else
                {
                    // Display an error if the file doesn't exist or if there are more than 4 columns
                    TableRow errorRow = new TableRow();
                    TableCell errorCell = new TableCell
                    {
                        Text = "No data available. File not found.",
                        ColumnSpan = 4,
                        CssClass = "text-center text-danger"
                    };
                    errorRow.Cells.Add(errorCell);
                    DynamicTable.Rows.Add(errorRow);
                }

            }
        }
    }
}