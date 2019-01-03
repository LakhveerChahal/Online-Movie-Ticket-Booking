Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports Microsoft.VisualBasic
Imports System.Windows
Imports System.Collections


Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Login.Click
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        con.ConnectionString = "Data Source=HEWLETT-PACKARD\SQLEXPRESS;Initial Catalog=BookMyShow;Integrated Security=True"
        con.Open()
        cmd.Connection = con
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandText = "login"
        cmd.Parameters.Add("@username", SqlDbType.VarChar, 20).Value = txtusername.Text
        cmd.Parameters.Add("@password", SqlDbType.VarChar, 50).Value = txtpassword.Text
        cmd.Parameters.Add("@result", SqlDbType.Int).Direction = ParameterDirection.Output
        cmd.Parameters.Add("@userid", SqlDbType.Int).Direction = ParameterDirection.Output
        cmd.ExecuteNonQuery()
        Dim value As Integer

        Dim uid As Integer
        value = cmd.Parameters("@result").Value

        If value = 1 Then
            msg.Text = "Successful Login"
            uid = cmd.Parameters("@userid").Value
            Session("uid") = uid
            Response.Redirect("Movies.aspx")
        Else
            msg.Text = "Incorrect Password or Username"
        End If
        con.Close()

    End Sub
    Protected Sub Button1_Click1(sender As Object, e As EventArgs) Handles Signup.Click
        Response.Redirect("signup.aspx")
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class
