<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddMeetings.aspx.cs" Inherits="Tasks.AddMeetings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Add Meetings</h1>

            <label>Room ID</label>
            <asp:TextBox ID="id" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />

            <label>Room Name</label>
            <asp:TextBox ID="name" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />

            <label>Room Location</label>
            <asp:TextBox ID="location" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />

            <label>Room Capacity</label>
            <asp:TextBox ID="capacity" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />

            <asp:Button ID="btn" runat="server" Text="Add Meeting Room" OnClick="btn_Click" />
        </div>
    </form>
</body>
</html>
