<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Numeric Palindromes</title>
        <style type="text/css">
        .main{
            border-width:thin;
            border-style:solid;
            margin:auto;
            width:900px;
            height:500px;
            background-color:#C0C0C0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
            <div style="text-align:center;font-size:medium;padding-top:30px">
                <asp:Label ID="Label1" runat="server" Text="Find Numeric Palindromes" Font-Bold="True" Font-Italic="False" Font-Names="Arial" Font-Size="XX-Large"></asp:Label>
                <br />
            </div>
            <div style="padding-left:60px">
                <br />
                <span style="color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(192, 192, 192); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Enter a starting integer (0-1,000,000,000):&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="16px" style="margin-left: 6px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter count (1-100):<asp:TextBox ID="TextBox2" runat="server" Width="56px" style="margin-left: 8px"></asp:TextBox>
                </span></div>
            <div style="padding-left:350px">
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Generate" Width="79px" style="margin-left: 0px" />
            </div>
            <div>
                <br />
                <asp:ListBox ID="ListBox1" runat="server" Height="173px" Rows="10" style="margin-left: 332px" Width="139px"></asp:ListBox>
            </div>
            <div style="text-align:center">
                <br />
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
