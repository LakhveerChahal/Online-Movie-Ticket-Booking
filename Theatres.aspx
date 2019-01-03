<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Theatres.aspx.vb" Inherits="Theatres" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1341px;
            height: 945px;
        }
        .auto-style2 {
            width: 1339px;
            height: 693px;
            text-align: center;
        }
        .auto-style3 {
            position: absolute;
            width: 381px;
            height: 320px;
            top: 78px;
            left: 468px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 110px;
            left: 889px;
            z-index: 1;
            width: 380px;
            height: 59px;
            font-size: x-large;
        }
        .auto-style5 {
            position: absolute;
            top: 238px;
            left: 1033px;
            z-index: 1;
            width: 112px;
            height: 43px;
        }
        .auto-style6 {
            position: absolute;
            top: 28px;
            left: 1100px;
            z-index: 1;
            width: 151px;
            height: 37px;
            font-size: x-large;
        }
    </style>
</head>
<body style="width: 1341px; height: 691px; margin-right: 0px; margin-bottom: 0px">
    <form id="form1" runat="server">
    <div class="auto-style2">
    
        <strong>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style6" Text="Logout" />
        </strong>
    
        <img alt="" class="auto-style1" src="theatre1.jpg" /><asp:Button ID="ok" runat="server" BackColor="Black" CssClass="auto-style5" Font-Size="XX-Large" ForeColor="White" Text="ok" />
        <asp:Label ID="chose" runat="server" CssClass="auto-style4" ForeColor="White" Text="Label"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style3" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:ButtonField ButtonType="Image" CommandName="select" ImageUrl="~/play_button (1).jpg" Text="Button" />
                <asp:TemplateField HeaderText="TheatreName" SortExpression="TheatreName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TheatreName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="theatre" runat="server" Text='<%# Bind("TheatreName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ShowTime" SortExpression="ShowTime">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ShowTime") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="time" runat="server" Text='<%# Bind("ShowTime") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle ForeColor="White" />
            <HeaderStyle BackColor="#CC3300" BorderStyle="Solid" ForeColor="White" />
            <RowStyle BorderWidth="10px" Font-Bold="True" Font-Names="HP Simplified" Font-Size="Large" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookMyShowConnectionString %>" SelectCommand="Theatres_Timings" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter Name="citycode" SessionField="loccode" Type="String" />
                <asp:QueryStringParameter Name="mcode" QueryStringField="mcode" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
