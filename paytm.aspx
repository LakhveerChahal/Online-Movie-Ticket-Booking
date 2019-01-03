
<%@ Page Language="VB" AutoEventWireup="false" CodeFile="paytm.aspx.vb" Inherits="paytm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1338px;
            height: 539px;
        }
        .auto-style2 {
            position: absolute;
            top: 265px;
            left: 678px;
            z-index: 1;
            width: 263px;
            height: 39px;
        }
        .auto-style3 {
            position: absolute;
            top: 343px;
            left: 686px;
            z-index: 1;
            width: 139px;
            height: 42px;
        }
        .auto-style4 {
            position: absolute;
            top: 268px;
            left: 366px;
            z-index: 1;
            width: 258px;
            height: 38px;
        }
        .auto-style5 {
            position: absolute;
            top: 339px;
            left: 879px;
            z-index: 1;
            width: 280px;
            height: 50px;
        }
    </style>
</head>
<body background:"paytm_box.jpg"="">
    <form id="form1" runat="server">
        <p>
            <img alt="" class="auto-style1" src="paytm_box.jpg" /><asp:Label ID="mob" runat="server" CssClass="auto-style4" Font-Bold="True" Font-Size="X-Large" Text="Mobile Number  :"></asp:Label>
            <asp:Button ID="pay" runat="server" CssClass="auto-style3" Font-Bold="True" Font-Size="X-Large" Text="Pay" />
            <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Font-Bold="True" Font-Size="X-Large"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2"></asp:TextBox>
        </p>
    </form>
</body>
</html>
