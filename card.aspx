<%@ Page Language="VB" AutoEventWireup="false" CodeFile="card.aspx.vb" Inherits="card" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1426px;
            height: 673px;
        }
        .auto-style2 {
            width: 1419px;
            height: 674px;
            position: absolute;
            top: -20px;
            left: -73px;
            z-index: 1;
            margin-bottom: 1px;
        }
        .auto-style6 {
            position: absolute;
            top: 319px;
            left: 343px;
            z-index: 1;
        }
        .auto-style12 {
            margin-left: 0px;
            position: absolute;
            top: 317px;
            left: 453px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 390px;
            left: 360px;
            z-index: 1;
            width: 147px;
            height: 45px;
        }
        .auto-style14 {
            position: absolute;
            top: 257px;
            left: 339px;
            z-index: 1;
            width: 224px;
            height: 29px;
        }
        .auto-style15 {
            position: absolute;
            top: 183px;
            left: 338px;
            z-index: 1;
            width: 339px;
            height: 32px;
        }
        .auto-style16 {
            position: absolute;
            top: 121px;
            left: 340px;
            z-index: 1;
            width: 342px;
            height: 34px;
        }
        .auto-style17 {
            position: absolute;
            top: 0px;
            left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style2">
        <asp:Label ID="Label1" runat="server" CssClass="auto-style17" style="z-index: 1" Text="Label"></asp:Label>
        <asp:TextBox ID="name" runat="server" CssClass="auto-style16" BackColor="Transparent" Font-Names="ocr a std"></asp:TextBox>
        <img alt="" class="auto-style1" src="card.jpg" /><asp:TextBox ID="cardno" runat="server" CssClass="auto-style15" BackColor="Transparent" Font-Names="ocr a std"></asp:TextBox>
        <asp:TextBox ID="cvvno" runat="server" CssClass="auto-style14" BackColor="Transparent" Font-Names="ocr a std"></asp:TextBox>
                    <asp:DropDownList ID="month" runat="server" Height="21px" Width="92px" CssClass="auto-style6" BackColor="Transparent" Font-Names="oc r a std">
                        <asp:ListItem>Month</asp:ListItem>
                        <asp:ListItem Value="01"></asp:ListItem>
                        <asp:ListItem>02</asp:ListItem>
                        <asp:ListItem>03</asp:ListItem>
                        <asp:ListItem>04</asp:ListItem>
                        <asp:ListItem>05</asp:ListItem>
                        <asp:ListItem>06</asp:ListItem>
                        <asp:ListItem>07</asp:ListItem>
                        <asp:ListItem>08</asp:ListItem>
                        <asp:ListItem>09</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="year" runat="server" CssClass="auto-style12" Height="21px" Width="116px" BackColor="Transparent">
                        <asp:ListItem>Year</asp:ListItem>
                        <asp:ListItem>2018</asp:ListItem>
                        <asp:ListItem>2019</asp:ListItem>
                        <asp:ListItem>2020</asp:ListItem>
                        <asp:ListItem>2021</asp:ListItem>
                        <asp:ListItem>2022</asp:ListItem>
                        <asp:ListItem>2023</asp:ListItem>
                        <asp:ListItem>2024</asp:ListItem>
                        <asp:ListItem>2025</asp:ListItem>
                        <asp:ListItem>2026</asp:ListItem>
                        <asp:ListItem>2027</asp:ListItem>
                        <asp:ListItem>2028</asp:ListItem>
                        <asp:ListItem>2029</asp:ListItem>
                        <asp:ListItem>2030</asp:ListItem>
                    </asp:DropDownList>
                <asp:Button ID="Proceed" runat="server" CssClass="auto-style13" Text="Proceed" Font-Bold="True" Font-Size="X-Large" BackColor="Transparent" />
    </form>
</body>
</html>
