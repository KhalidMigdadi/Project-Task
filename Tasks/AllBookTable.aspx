<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllBookTable.aspx.cs" Inherits="Tasks.AllBookTable" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>All Book</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Table ID="DynamicTable" runat="server" CssClass="table table-striped"></asp:Table>

            <table>
                <thead>

                </thead>
                <tbody id="rew"></tbody>
            </table>

        </div>
    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
