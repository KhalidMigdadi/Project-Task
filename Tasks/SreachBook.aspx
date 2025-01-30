<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SreachBook.aspx.cs" Inherits="Tasks.SreachBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtSearch" runat="server" placeholder="Enter Book ID"></asp:TextBox>
            <br />
            <br />

            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="SearchBook" />
            <br />
            <br />

            <asp:Label ID="lblResult" runat="server" ForeColor="Red"></asp:Label>

            <!-- Table to Display Search Results -->
            <asp:Table ID="DynamicTable" runat="server" CssClass="table table-bordered"></asp:Table>

        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
