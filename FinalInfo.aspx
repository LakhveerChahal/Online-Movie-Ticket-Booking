<%@ Page Language="VB" AutoEventWireup="false" CodeFile="FinalInfo.aspx.vb" Inherits="info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1340px;
            height: 662px;
        }
        .auto-style2 {
            position: absolute;
            top: 180px;
            left: 1092px;
            z-index: 1;
            width: 179px;
            height: 47px;
            font-size: x-large;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            position: absolute;
            top: 283px;
            left: 1099px;
            z-index: 1;
            width: 158px;
            height: 55px;
        }
        .auto-style5 {
            position: absolute;
            top: 386px;
            left: 1076px;
            z-index: 1;
            width: 199px;
            height: 38px;
        }
        .auto-style7 {
            position: absolute;
            top: 564px;
            left: 1128px;
            z-index: 1;
            width: 119px;
            height: 42px;
        }
        .auto-style8 {
            position: absolute;
            top: 481px;
            left: 1126px;
            z-index: 1;
            width: 123px;
            height: 29px;
        }
        .auto-style9 {
            position: absolute;
            top: 26px;
            left: 1175px;
            z-index: 1;
            width: 153px;
            height: 39px;
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style3">
    <div class="auto-style3">
    
        <strong>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style9" Text="Logout" BackColor="Transparent" ForeColor="White" />
        </strong>
    
        <img alt="" class="auto-style1" src="payment.jpg" /><asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style8" Font-Bold="True" Font-Size="Large">
            <asp:ListItem>--Select--</asp:ListItem>
            <asp:ListItem>Debit card/Credit Card</asp:ListItem>
            <asp:ListItem>Paytm</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="proceed" runat="server" CssClass="auto-style7" Font-Bold="True" Font-Size="Large" Text="Proceed" />
        <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Font-Bold="True" Font-Names="Kristen ITC" Font-Size="X-Large" ForeColor="Yellow"></asp:Label>
    
    </div>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Font-Bold="True" Font-Names="Kristen ITC" Font-Size="X-Large" ForeColor="Yellow" Text="Label"></asp:Label>
            <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Font-Bold="True" Font-Names="Kristen ITC" Font-Size="X-Large" ForeColor="Yellow" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
