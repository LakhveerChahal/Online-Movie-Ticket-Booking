<%@ Page Language="VB" AutoEventWireup="false" CodeFile="class.aspx.vb" Inherits="_class" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 750px;
            width: 1338px;
            margin-bottom: 2px;
        }
        .auto-style4 {
            text-align: center;
            height: 752px;
            width: 1340px;
        }
        .auto-style5 {
            font-size: large;
            width: 426px;
            height: 376px;
            position: absolute;
            top: 144px;
            left: 138px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 150px;
            left: 720px;
            z-index: 1;
            height: 46px;
            width: 288px;
            font-size: x-large;
            bottom: 324px;
        }
        .auto-style7 {
            position: absolute;
            top: 212px;
            left: 574px;
            z-index: 1;
            width: 219px;
            height: 41px;
            font-size: large;
            right: 506px;
        }
        .auto-style8 {
            position: absolute;
            top: 198px;
            z-index: 1;
            height: 41px;
            width: 192px;
            left: 813px;
            bottom: 275px;
        }
        .auto-style9 {
            position: absolute;
            top: 158px;
            left: 972px;
            z-index: 1;
            width: 201px;
            height: 33px;
            font-size: medium;
        }
        .auto-style10 {
            position: absolute;
            top: 258px;
            left: 919px;
            z-index: 1;
            width: 155px;
            height: 36px;
            font-size: medium;
        }
        .auto-style11 {
            position: absolute;
            top: 301px;
            left: 1047px;
            z-index: 1;
            width: 263px;
            height: 52px;
            font-size: x-large;
        }
        .auto-style12 {
            position: absolute;
            top: 392px;
            left: 1114px;
            z-index: 1;
            width: 122px;
            height: 37px;
        }
        .auto-style13 {
            position: absolute;
            top: 260px;
            left: 813px;
            z-index: 1;
            width: 84px;
            height: 35px;
        }
        .auto-style14 {
            width: 1336px;
            height: 753px;
            margin-right: 0px;
            margin-top: 0px;
        }
        .auto-style15 {
            position: absolute;
            top: 25px;
            left: 1141px;
            z-index: 1;
            width: 141px;
            height: 41px;
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style2">
        <div class="auto-style4">
            <strong>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style15" Text="Logout" />
            </strong>
            <asp:Label ID="available" runat="server" CssClass="auto-style9" Text="Label" ForeColor="White"></asp:Label>
&nbsp;<asp:Label ID="check" runat="server" CssClass="auto-style10" Font-Bold="True" ForeColor="White"></asp:Label>
            <asp:Label ID="price" runat="server" CssClass="auto-style11" Font-Bold="True" ForeColor="White"></asp:Label>
            <asp:Button ID="Chk" runat="server" CssClass="auto-style13" Text="Check" BackColor="Transparent" />
            <asp:Label ID="chose" runat="server" CssClass="auto-style6" Text="Label" Font-Bold="True" ForeColor="White"></asp:Label>
            <asp:Label ID="Number" runat="server" CssClass="auto-style7" Text="Enter the number of seats" Font-Bold="True" ForeColor="White"></asp:Label>
            <asp:TextBox ID="seats" runat="server" CssClass="auto-style8" BackColor="Transparent"></asp:TextBox>
            <asp:Button ID="proceed" runat="server" CssClass="auto-style12" Text="Proceed" BackColor="Maroon" Font-Bold="True" ForeColor="White" />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" CssClass="auto-style5" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
                <Columns>
                    <asp:ButtonField ButtonType="Image" CommandName="select" ImageUrl="~/play_button (1).jpg" Text="Button" />
                    <asp:TemplateField HeaderText="Theatre" SortExpression="TheatreName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TheatreName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="theatre" runat="server" Text='<%# Bind("TheatreName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Class" SortExpression="SeatsClass">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("SeatsClass") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="seatsclass" runat="server" Text='<%# Bind("SeatsClass") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Price" SortExpression="TotalPrice">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("TotalPrice") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="totalprice" runat="server" Text='<%# Bind("TotalPrice") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
            <img alt="" class="auto-style14" src="seatclass.jpg" /></div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookMyShowConnectionString %>" SelectCommand="Seats_and_Price" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:SessionParameter Name="citycode" SessionField="loccode" Type="Int32" DefaultValue="" />
                    <asp:SessionParameter DefaultValue="" Name="mcode" SessionField="mcode" Type="Int32" />
                    <asp:SessionParameter Name="tcode" SessionField="tcode" Type="Int32" DefaultValue="" />
                    <asp:SessionParameter DefaultValue="" Name="timing" SessionField="time" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
    </form>
</body>
</html>
