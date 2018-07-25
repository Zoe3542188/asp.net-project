<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .left{
            padding:100px;
            float:left;
            width:243px;
            height:111px;
        }
        .right{
            border-width:thin;
            padding:50px;
            float:left;
            border-left-style:solid;
            height:217px;
            margin-top:30px;
        }
        .main{
            border-width:thin;
            border-style:solid;
            margin:auto;
            width:638px;
            height:384px;
            background-color:#C0C0C0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
            <div class="left">
                <p>
                    Input:
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 9px" Width="151px"></asp:TextBox>
                </p>
                <p>
                    Result:
                    <asp:TextBox ID="TextBox2" runat="server"  Width="152px" ReadOnly="True"></asp:TextBox>
                </p>
                <p>
                    <asp:CustomValidator ID="CustomValidator1" runat="server"  ErrorMessage="Invalid or missing value！" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate" ControlToValidate="TextBox1" Display="Static" ClientValidationFunction="ClientValidate" BackColor="#D6D6CF"></asp:CustomValidator>
                </p>
                
            </div>
            <div class="right">

                <asp:Button ID="Button1" runat="server" Text="Enter" Width="57px" onclick="Button1_Click"/>
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" Text="+" Width="57px" onclick="Button2_Click"/>
                <br />
                <br />
                <asp:Button ID="Button3" runat="server" Text="-" Width="57px" onclick="Button3_Click"/>
                <br />
                <br />
                <asp:Button ID="Button4" runat="server" Text="x" Width="57px" onclick="Button4_Click"/>
                <br />
                <br />
                <asp:Button ID="Button5" runat="server" Text="/" Width="57px" onclick="Button5_Click"/>

            </div>
        </div>
    </form>
</body>
</html>
