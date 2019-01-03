<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Movies.aspx.vb" Inherits="Movies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
       
        .auto-style1 {
            width: 1340px;
            height: 901px;
        }
        .auto-style2 {
            position: absolute;
            top: 25px;
            left: 803px;
            z-index: 1;
            width: 295px;
            height: 38px;
            font-size: xx-large;
        }
        .auto-style4 {
            position: absolute;
            top: 227px;
            left: 566px;
            z-index: 1;
            width: 219px;
            height: 44px;
            right: 500px;
        }
        .auto-style5 {
            position: absolute;
            top: 236px;
            left: 894px;
            z-index: 1;
            width: 205px;
            height: 20px;
        }
        .auto-style6 {
            width: 352px;
            height: 415px;
            position: absolute;
            top: 319px;
            left: 894px;
            z-index: 1;
            font-size: large;
        }
        .auto-style7 {
            text-align: center;
        }
       
        .auto-style8 {
            position: absolute;
            top: 26px;
            left: 1126px;
            z-index: 1;
            width: 116px;
            height: 36px;
        }
       
        </style>
</head>
<body style="width: 1300px; height: 1026px; margin-right: 6px; margin-bottom: 4px">
    
    <form id="form1" runat="server">
        <p class="auto-style7">
            <img alt="" class="auto-style1" src="wallhaven-462932.jpg" /><asp:Button ID="Button1" runat="server" CssClass="auto-style8" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Text="Logout" BackColor="Transparent" />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="auto-style5" DataSourceID="SqlDataSource1" DataTextField="Location" DataValueField="Location" Font-Size="Large" Height="50px" AppendDataBoundItems="True">
                <asp:ListItem>--Select--</asp:ListItem>
            </asp:DropDownList>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style6" DataKeyNames="MovieCode" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="MovieCode" DataNavigateUrlFormatString="Theatres.aspx?mcode={0}" DataTextField="MovieName" HeaderText="Movie" />
                    <asp:BoundField DataField="GenreName" HeaderText="Genre" SortExpression="GenreName" />
                    <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" Font-Size="Large" HorizontalAlign="Center" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BookMyShowConnectionString %>" SelectCommand="MoviesInACity" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="city" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookMyShowConnectionString %>" SelectCommand="SELECT [Location] FROM [Locations]"></asp:SqlDataSource>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Font-Names="Pristina" Font-Size="XX-Large" ForeColor="White" Text="Choose your city  :"></asp:Label>
            <asp:Label ID="txtuser" runat="server" BackColor="Transparent" BorderColor="#000066" CssClass="auto-style2" Font-Names="Segoe Script" Font-Size="X-Large" ForeColor="White" Text="Label"></asp:Label>
        </p>
    </form>
    
    </body>
</html>
