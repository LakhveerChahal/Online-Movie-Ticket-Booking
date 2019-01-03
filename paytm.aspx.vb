Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports Microsoft.VisualBasic
Imports System.Collections
Imports Microsoft.SqlServer

Partial Class paytm
    Inherits System.Web.UI.Page

    Protected Sub pay_Click(sender As Object, e As EventArgs) Handles pay.Click
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        Dim uid As Integer = Session("uid")
        Dim contact As Int64

        con.ConnectionString = "Data Source=HEWLETT-PACKARD\SQLEXPRESS;Initial Catalog=BookMyShow;Integrated Security=True "
        cmd.Connection = con
        con.Open()

        cmd.CommandText = ("select Contact from Users where UserID=" & uid)
        Dim sdr As SqlDataReader = cmd.ExecuteReader
        sdr.Read()
        contact = sdr.Item("Contact")
        If (contact = TextBox1.Text) Then
            con.Close()
            Response.Redirect("bookit.aspx")
        Else
            mob.Text = "Incorrect Mobile Number"
        End If


    End Sub
End Class
