<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="LoginPage.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 99%;
            height: 334px;
        }
        .auto-style2 {
            height: 69px;
        }
        .newStyle1 {
            font-family: Georgia, "Times New Roman", Times, serif;
        }
        .auto-style3 {
            height: 220px;
        }
        .auto-style4 {
            height: 69px;
            width: 472px;
        }
        .auto-style6 {
            width: 472px;
        }
        .auto-style7 {
            height: 41px;
        }
        .auto-style9 {
            width: 130px;
            height: 61px;
        }
        .auto-style10 {
            height: 41px;
            width: 196px;
        }
        .newStyle2 {
            font-family: "Courier New", Courier, monospace;
            font-size: medium;
        }
        .auto-style12 {
            font-family: "Courier New", Courier, monospace;
            font-size: medium;
            height: 41px;
        }
        .auto-style16 {
            font-family: "Courier New", Courier, monospace;
            font-size: medium;
            height: 40px;
        }
        .auto-style17 {
            width: 196px;
            height: 40px;
        }
        .auto-style18 {
            height: 40px;
        }
        .auto-style19 {
            height: 61px;
            width: 196px;
        }
        .auto-style20 {
            height: 61px;
        }
        .auto-style21 {
            width: 99%;
        }
    </style>
</head>
<body style="height: 430px">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style4">
                        <h1><span class="newStyle1">Sign Up</span></h1>
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td style="vertical-align:top" class="auto-style6">
                        <table class="auto-style21">
                            <tr>
                                <td class="auto-style12"><strong>First Name</strong></td>
                                <td class="auto-style10">
                                    <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Inset" Height="26px" Width="172px"></asp:TextBox>
                                </td>
                                <td class="auto-style7"></td>
                            </tr>
                            <tr>
                                <td class="auto-style16"><strong>Last Name</strong></td>
                                <td class="auto-style17">
                                    <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Inset" Height="25px" Width="172px"></asp:TextBox>
                                </td>
                                <td class="auto-style18"></td>
                            </tr>
                            <tr>
                                <td class="auto-style16"><strong>Email</strong></td>
                                <td class="auto-style17">
                                    <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Inset" Height="25px" Width="171px"></asp:TextBox>
                                </td>
                                <td class="auto-style18"></td>
                            </tr>
                            <tr>
                                <td class="auto-style16"><strong>Gender</strong></td>
                                <td class="auto-style17">
                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                        <asp:ListItem>other</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style18"></td>
                            </tr>
                            <tr>
                                <td class="auto-style12"><strong>Adress</strong></td>
                                <td class="auto-style10">
                                    <asp:TextBox ID="TextBox4" runat="server" BorderStyle="Inset" Height="25px"  Width="173px"></asp:TextBox>
                                </td>
                                <td class="auto-style7"></td>
                            </tr>
                            <tr>
                                <td class="auto-style12"><strong>Phone</strong></td>
                                <td class="auto-style10">
                                    <asp:TextBox ID="TextBox5" runat="server" BorderStyle="Inset" Height="25px" Width="173px"></asp:TextBox>
                                </td>
                                <td class="auto-style7"></td>
                            </tr>
                            <tr>
                                <td class="auto-style16"><strong>Password</strong></td>
                                <td class="auto-style17">
                                    <asp:TextBox ID="TextBox6" runat="server" BorderStyle="Inset" Height="25px" Width="172px"></asp:TextBox>
                                </td>
                                <td class="auto-style18">
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox7" ErrorMessage="CompareValidator"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style12"><strong>Confirm Password</strong></td>
                                <td class="auto-style10">
                                    <asp:TextBox ID="TextBox7" runat="server" BorderStyle="Inset" Height="25px" Width="172px"></asp:TextBox>
                                </td>
                                <td class="auto-style7">
                                    <asp:Label ID="Label1" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style9"></td>
                                <td class="auto-style19">
                                    <asp:Button ID="Button1" runat="server" BorderStyle="None" OnClick="Button1_Click" Text=" Sign Up" Width="140px" />
                                </td>
                                <td class="auto-style20"></td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
