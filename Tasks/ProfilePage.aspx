<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfilePage.aspx.cs" Inherits="Tasks.ProfilePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
               <!-- Search Section -->
            <asp:TextBox ID="searchTxt" runat="server" placeholder="Enter email to search"></asp:TextBox>
            <asp:Button ID="searchBtn" runat="server" Text="Search" OnClick="searchBtn_Click" />
            <br /><br />

            <!-- User Details Section -->
            <asp:Label Text="Name:" runat="server" />
            <asp:TextBox ID="name" runat="server"></asp:TextBox>
            <br />

            <asp:Label Text="Email:" runat="server" />
            <asp:TextBox ID="Email" runat="server"></asp:TextBox>
            <br />

            <asp:Label Text="Password:" runat="server" />
            <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
            <br />

         
            <br /><br />

            <!-- Edit Button -->
            <asp:Button ID="editBtn" runat="server" Text="Save Changes" OnClick="editBtn_Click" />
        </div>
    </form>
</body>
</html>
