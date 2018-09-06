<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>lab7</title>
    <style>
        .main
        {
            background-color:paleturquoise;
            border-style: solid;
            margin: auto;
            width:620px;
            border-width:thin;
            height:369px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
            <br />
            <asp:Label style="padding-left:150px;" ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="X-Large" Text="Customer Comment Form"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Height="219px" style="margin-left: 74px" Width="477px" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Height="32px" style="margin-left: 12px" Text="Submit Comment" Width="120px" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Height="32px" style="margin-left: 28px" Text="View Comments" Width="120px" OnClick="Button2_Click" />
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Comments]" InsertCommand="INSERT INTO Comments(Comment) VALUES (@comment)">
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="comment" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
