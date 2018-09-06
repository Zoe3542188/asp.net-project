<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="private_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="Label1" runat="server" Text="User :"></asp:Label>
            <asp:TextBox ID="user" runat="server" style="margin-left: 41px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Password :"></asp:Label>
            <asp:TextBox ID="pass" runat="server" style="margin-left: 10px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Height="23px" OnClick="Button1_Click" Text="Login" Width="62px" />

            <asp:Label ID="Label3" runat="server"></asp:Label>

        </div>
    </form>
</body>
</html>
