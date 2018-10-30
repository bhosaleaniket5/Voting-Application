<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="LoginPage.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 145px;
        }
        .auto-style2 {
            width: 67px;
        }
        .auto-style3 {
            width: 67px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            font-size: x-large;
            color: #0000FF;
            text-align: center;
            height: 30px;
        }
        .auto-style6 {
            width: 820px;
            height: 65px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style6">
            <h1 class="auto-style5">Login Page</h1>
            <br />
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Username:&nbsp; </td>
                <td>
                    <asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="98px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
