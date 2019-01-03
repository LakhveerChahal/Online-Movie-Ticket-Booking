Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports Microsoft.VisualBasic
Imports System.Windows
Imports System.Collections
Partial Class Signupp
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        con.ConnectionString = "Data Source=HEWLETT-PACKARD\SQLEXPRESS;Initial Catalog=BookMyShow;Integrated Security=True"
        con.Open()
        cmd.Connection = con
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandText = "signup"
        cmd.Parameters.Add("@uname", SqlDbType.VarChar, 20).Value = txtusername.Text
        cmd.Parameters.Add("@pass", SqlDbType.VarChar, 20).Value = txtpassword.Text
        cmd.Parameters.Add("@cont", SqlDbType.VarChar, 20).Value = txtmob.Text
        cmd.Parameters.Add("@email", SqlDbType.VarChar, 20).Value = txtmail.Text
        cmd.Parameters.Add("@result", SqlDbType.Int).Direction = ParameterDirection.Output
        cmd.ExecuteNonQuery()
        Dim res As Integer
        res = cmd.Parameters("@result").Value
        If (res = 1) Then
            Label5.Text = "OOPS!User Already exists"
        Else
            Label5.Text = "Signed Up Successfully"
            Response.Redirect("LoginPage.aspx")
        End If
    End Sub
End Class
