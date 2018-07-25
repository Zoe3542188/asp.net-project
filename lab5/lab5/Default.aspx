<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>lab5</title>
    <style type="text/css">
        .main {
            width:475px;
            background-color:gainsboro;
            height:223px;
            border-width:thin;
            border-style:solid;
            margin:auto;
        }
        #Text1 {
            height: 18px;
            width: 80px;
            margin-left: 0px;
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
            &nbsp;<asp:Label ID="Label7" runat="server" Font-Names="Arial Black" Text="Convert"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server" style="margin-top: 10px" Width="103px"></asp:TextBox>
&nbsp;<br />
            <br />
&nbsp;
            <asp:Label ID="Label9" runat="server" Font-Names="Arial Black" Text="From"></asp:Label>
&nbsp;&nbsp; <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Unit" DataValueField="Id" Height="21px" style="margin-left: 0px">
            </asp:DropDownList>
&nbsp;<asp:Label ID="Label8" runat="server" Font-Names="Arial Black" Text=" to "></asp:Label>
            &nbsp;<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Unit" DataValueField="Id">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" style="margin-left: 12px" Text="transfer" OnClick="Button1_Click" Height="35px" Width="85px" />
            <asp:Label ID="Label1" runat="server" ForeColor="#FF3300"></asp:Label>
            <br />
            <br />
            <div style="height: 67px; width: 356px; margin:auto; background-color:white;">result:<br />
                <asp:Label ID="Label2" runat="server"></asp:Label>
                <asp:Label ID="Label3" runat="server"></asp:Label>
                <asp:Label ID="Label4" runat="server"></asp:Label>
                <asp:Label ID="Label5" runat="server"></asp:Label>
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </div>
</div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [Conversions]"></asp:SqlDataSource>
    </form>
</body>
</html>
