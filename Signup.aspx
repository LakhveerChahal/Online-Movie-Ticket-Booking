<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Signup.aspx.vb" Inherits="Signupp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1337px;
            height: 796px;
        }
        .auto-style2 {
            position: absolute;
            top: 104px;
            left: 915px;
            z-index: 1;
            width: 257px;
            height: 32px;
        }
        .auto-style3 {
            position: absolute;
            top: 163px;
            left: 913px;
            z-index: 1;
            width: 258px;
            height: 32px;
        }
        .auto-style4 {
            position: absolute;
            top: 227px;
            left: 913px;
            z-index: 1;
            width: 260px;
            height: 30px;
        }
        .auto-style5 {
            position: absolute;
            top: 295px;
            left: 912px;
            z-index: 1;
            width: 263px;
            height: 31px;
        }
        .auto-style6 {
            position: absolute;
            top: 423px;
            left: 800px;
            z-index: 1;
            width: 143px;
            height: 39px;
        }
        .auto-style7 {
            position: absolute;
            top: 422px;
            left: 985px;
            z-index: 1;
            width: 245px;
            height: 39px;
        }
        .auto-style8 {
            position: absolute;
            top: 431px;
            left: 601px;
            z-index: 1;
            width: 170px;
            height: 26px;
        }
        .auto-style9 {
            position: absolute;
            top: 350px;
            left: 914px;
            z-index: 1;
            width: 260px;
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <img alt="" class="auto-style1" src="signup%20img.jpg" /><asp:TextBox ID="txtmail" runat="server" BackColor="Transparent" CssClass="auto-style9"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" CssClass="auto-style7" Font-Size="X-Large" ForeColor="White"></asp:Label>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style6" Text="Sign Up" BorderStyle="Outset" Font-Bold="True" Font-Italic="False" Font-Names="Arial Black" Font-Size="X-Large" />
        <asp:TextBox ID="txtmob" runat="server" CssClass="auto-style5" BackColor="Transparent"></asp:TextBox>
        <asp:TextBox ID="txtconfirm" runat="server" CssClass="auto-style4" TextMode="Password" BackColor="Transparent"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtconfirm" CssClass="auto-style8" ErrorMessage="Password does not match" ForeColor="White"></asp:CompareValidator>
        <asp:TextBox ID="txtusername" runat="server" CssClass="auto-style2" BackColor="Transparent"></asp:TextBox>
    
    </div>
        <asp:TextBox ID="txtpassword" runat="server" CssClass="auto-style3" TextMode="Password" BackColor="Transparent"></asp:TextBox>
    </form>
</body>
</html>
