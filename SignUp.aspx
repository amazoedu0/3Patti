<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="test.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    
    <link href="3-Pati/gameStyles.css" rel="stylesheet" />
    <link href="3-Pati/test.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            border-radius: 25px;
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            grid-template-rows: repeat(3, 1fr);
            box-shadow: 0 0 80px 2px rgba(0, 0, 0, 0.767);
            gap: 10px;
            height: 1102px;
            border-style: solid;
            border-width: 8px;
            margin-left: 180px;
            margin-right: 180px;
            margin-top: 100px;
            margin-bottom: 200px;
            padding-top: 10px;
            padding-bottom: 10px;
            background-color: rgba(255, 251, 0, 0.137);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="auto-style1">
                <div class="item item1">
                    <img class="logo" src="3-Pati/images/logo.png">
                </div>
                    <div class="item item3">

                        <table>
                            <tr>
                                <td>
                                    <span style="font-size: x-large; font-family: OpenSauceSans;">Username
                                    <asp:Label ID="exists" runat="server" Text=""></asp:Label>
                                    </span><br />
                                    <asp:TextBox ID="username" CssClass="btn btn2" runat="server" Width="200px"></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Username Required" ControlToValidate="username" Font-Bold="True" Font-Size="X-Large" Font-Strikeout="False" ForeColor="#990000"></asp:RequiredFieldValidator>
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;</td>
                                <td>
                                    <span style="font-size: x-large; font-family: OpenSauceSans;">Password</span><br />
                                    <asp:TextBox ID="password" CssClass="btn btn2" type="password" runat="server" Width="200px" OnTextChanged="password_TextChanged"></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Password Required" ControlToValidate="password" Font-Bold="True" Font-Size="X-Large" ForeColor="#990000"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span style="font-size: x-large; font-family: OpenSauceSans;">Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="* Invalid Email" Font-Bold="True" Font-Size="X-Large" ForeColor="#990000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    </span><br />
                                    <asp:TextBox ID="email" CssClass="btn btn2" runat="server" Width="200px" OnTextChanged="email_TextChanged"></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Email Address Required" ControlToValidate="email" Font-Bold="True" Font-Size="X-Large" ForeColor="#990000"></asp:RequiredFieldValidator>
                                &nbsp;
                                </td>
                                <td>&nbsp;&nbsp;&nbsp;</td>
                                <td>
                                    <span style="font-size: x-large; font-family: OpenSauceSans;">Confirm Password</span><br />
                                    <asp:TextBox ID="confirmpass" CssClass="btn btn2" type="password" runat="server" Width="200px" OnTextChanged="confirmpass_TextChanged"></asp:TextBox>
                                    <br />
                                    &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="confirmpass" ErrorMessage="*Password must be same" Font-Bold="True" Font-Size="X-Large" ForeColor="#990000"></asp:CompareValidator>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="item item4">
                        <table>
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td>
                                    <asp:Button ID="signup" runat="server" Text="Sign Up" CssClass="btn btn3" OnClick="signup_Click" Width="520px" />
                                </td>
                            </tr>
                        </table>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
