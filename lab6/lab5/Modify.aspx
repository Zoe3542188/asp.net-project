<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Modify.aspx.cs" Inherits="Modify" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Modify Database</title>
    <style>
    .main{
        height:161px;
        width:434px;
        margin:auto;
        border-width:thin;
        border-style:solid;
        background-color:gainsboro;
    }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
        &nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Units in Database:"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Unit" DataValueField="Id" Height="20px" style="margin-left: 7px" Width="116px">
            </asp:DropDownList>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="Unit:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 6px" Width="83px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Factor:"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Height="16px" style="margin-left: 0px" Width="98px"></asp:TextBox>
            <br />
&nbsp;<asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 23px" Text="Add" Width="46px" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 8px" Text="Delete" Width="51px" />
&nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="margin-left: 234px" Text="Back" />
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM Conversions WHERE (Id = @Id)" InsertCommand="INSERT INTO Conversions(Unit, Factor) VALUES (@NewUnit, @NewFac)" SelectCommand="SELECT * FROM [Conversions]">
            <DeleteParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Id" PropertyName="SelectedValue" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="NewUnit" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox2" Name="NewFac" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
