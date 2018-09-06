<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Show.aspx.cs" Inherits="private_Show" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>show comments</title>
    <style>
        .main 
        {
            border-style: solid;
            border-color: inherit;
            margin: auto;
            width:605px;
            height:353px;
            background-color:paleturquoise;
            border-width:thin;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">

            <br />
            <asp:TextBox style="position:center; margin-left: 65px; margin-top: 35px;" ID="TextBox1" runat="server" Height="207px" Width="470px" TextMode="MultiLine"></asp:TextBox>

            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Height="36px" style="margin-left: 24px" Text="Next Comment" Width="104px" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Height="36px" style="margin-left: 26px" Text="Delete All Comments" Width="138px" OnClick="Button2_Click" />

            <asp:Button ID="Button3" runat="server" BackColor="#FFFF99" Height="30px" OnClick="Button3_Click" style="margin-left: 131px" Text="Go Back Add Comments" Width="167px" />

        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Comments]"></asp:SqlDataSource>
    </form>
</body>
</html>
