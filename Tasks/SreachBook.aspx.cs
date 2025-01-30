using System;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tasks
{
    public partial class SreachBook : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                AddHeaderRow();
            }
        }

        private void AddHeaderRow()
        {
            TableRow headerRow = new TableRow();
            headerRow.Cells.Add(new TableCell { Text = "Book ID", CssClass = "font-weight-bold" });
            headerRow.Cells.Add(new TableCell { Text = "Book Name", CssClass = "font-weight-bold" });
            headerRow.Cells.Add(new TableCell { Text = "Book Type", CssClass = "font-weight-bold" });
            headerRow.Cells.Add(new TableCell { Text = "Book Level", CssClass = "font-weight-bold" });

            DynamicTable.Rows.Add(headerRow);
        }

        protected void SearchBook(object sender, EventArgs e)
        {
            string filePath = Server.MapPath("books.txt");
            string searchId = txtSearch.Text.Trim();

            if (!File.Exists(filePath))
            {
                lblResult.Text = "No book records found!";
                return;
            }

            string[] lines = File.ReadAllLines(filePath); // must be array , becuase we have an array so we must use for to Enter it 
            bool found = false;

            foreach (string line in lines)
            {
                string[] columns = line.Split(' '); // Assuming data is stored as "ID Name Type Level"
                if (columns.Length == 4 && columns[0] == searchId) // Check if ID matches
                {
                    TableRow row = new TableRow();
                    foreach (string columnValue in columns)
                    {
                        TableCell cell = new TableCell();
                        cell.Text = columnValue;
                        row.Cells.Add(cell);
                    }
                    DynamicTable.Rows.Add(row);
                    found = true;
                    break; // Stop searching after finding the book
                }
            }

            if (!found)
            {
                lblResult.Text = "Book not found!";
            }
        }
    }
}
