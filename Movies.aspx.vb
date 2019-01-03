Imports System
Imports System.Data.SqlClient
Imports Microsoft.VisualBasic
Imports System.Collections
Partial Class Movies
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        GridView1.Visible = False
        Dim cmd As New SqlCommand
        Dim con As New SqlConnection
        con.ConnectionString = "Data Source=HEWLETT-PACKARD\SQLEXPRESS;Initial Catalog=BookMyShow;Integrated Security=True"
        con.Open()
        cmd.Connection = con
        Dim user As Integer
        user = CType(Session.Item("uid"), Integer)
        Dim cm As New SqlCommand("select UserName from Users where UserID=" & user, con)
        Dim sdr As SqlDataReader = cm.ExecuteReader()

        While sdr.Read = True
            txtuser.Text = "Welcome   " & sdr.Item("UserName")
        End While
        sdr.Close()
        sdr.Dispose()
        con.Close()
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub
    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        Dim city As String = DropDownList1.SelectedValue

        If city.Length > 0 Then
            GridView1.Visible = True
        End If
        Dim con As New SqlConnection
        con.ConnectionString = "Data Source=HEWLETT-PACKARD\SQLEXPRESS;Initial Catalog=BookMyShow;Integrated Security=True"
        con.Open()
        Dim cmd As New SqlCommand("select LocCode from Locations where Location ='" + city + "'", con)
        Dim sdrr As SqlDataReader = cmd.ExecuteReader()
        Dim loccode As Integer
        While sdrr.Read = True
            loccode = sdrr.Item("LocCode")
        End While
        Session("loccode") = loccode
        con.Close()
        sdrr.Dispose()
        sdrr.Close()
    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("loginpage.aspx?outdone=1")
    End Sub
End Class
