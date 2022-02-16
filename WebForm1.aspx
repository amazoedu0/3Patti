<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="test.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link href="3-Pati/gameStyles.css" rel="stylesheet" />
    <link href="3-Pati/test.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            direction: ltr;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
                <div class="item item1">
                    <img class="logo" src="3-Pati/images/logo.png">
                </div>
                    <div class="item item3">

                        <table>
                            <tr>
                                <td class="auto-style1">
                                    <span style="font-size: x-large; font-family: OpenSauceSans;">Username&nbsp;&nbsp;
                                    <asp:Label ID="exists" runat="server" Text=""></asp:Label>
                                    </span><br />
                                    <asp:TextBox ID="username" CssClass="btn btn2" runat="server" Width="200px"></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Username Required" ControlToValidate="username" Font-Bold="True" Font-Size="X-Large" Font-Strikeout="False" ForeColor="#990000"></asp:RequiredFieldValidator>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;</td>
                                <td>
                                    <span style="font-size: x-large; font-family: OpenSauceSans;">Password</span><br />
                                    <asp:TextBox ID="password" CssClass="btn btn2" type="password" runat="server" Width="200px"></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Password Required" ControlToValidate="password" Font-Bold="True" Font-Size="X-Large" ForeColor="#990000"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="item item4">
                        <table>
                            <tr>
                                <td>
                                    <asp:Button ID="login" runat="server" Text="Login" CssClass="btn btn3" OnClick="login_Click" Width="520px" />
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td>
                                    <asp:Button ID="signup" runat="server" Text="Sign Up" CssClass="btn btn4" OnClick="signup_Click" Width="520px" formnovalidate CausesValidation="false"/>
                                </td>
                            </tr>
                        </table>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
type 