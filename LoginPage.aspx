<%@ Page Language="VB" AutoEventWireup="false" CodeFile="LoginPage.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1340px;
            height: 817px;
        }
        .auto-style4 {
            position: absolute;
            top: 156px;
            left: 902px;
            z-index: 1;
            width: 276px;
            height: 42px;
        }
        .auto-style5 {
            position: absolute;
            top: 261px;
            left: 900px;
            z-index: 1;
            width: 276px;
            height: 42px;
        }
        .auto-style6 {
            position: absolute;
            top: 394px;
            left: 935px;
            z-index: 1;
            width: 135px;
            height: 41px;
        }
        .auto-style7 {
            position: absolute;
            top: 393px;
            left: 702px;
            z-index: 1;
            width: 135px;
            height: 41px;
        }
        .auto-style8 {
            position: absolute;
            top: 456px;
            left: 937px;
            z-index: 1;
            width: 268px;
            height: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:TextBox ID="txtusername" runat="server" CssClass="auto-style4" Font-Size="X-Large"></asp:TextBox>
            <asp:Button ID="Login" runat="server" CssClass="auto-style6" Font-Names="Arial Black" Font-Size="X-Large" Text="Login" BackColor="#C72425" ForeColor="White" />
            <asp:Label ID="msg" runat="server" CssClass="auto-style8" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
            <asp:TextBox ID="txtpassword" runat="server" CssClass="auto-style5" Font-Size="X-Large" TextMode="Password"></asp:TextBox>
            <img alt="" class="auto-style1" src="login%20.jpg" /><asp:Button ID="Signup" runat="server" CssClass="auto-style7" Font-Names="Arial Black" Font-Size="X-Large" Text="Sign Up" BackColor="#C72425" ForeColor="White" />
        </p>
    </form>
</body>
</html>
