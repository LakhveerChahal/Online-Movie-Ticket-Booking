Imports System.Data.SqlClient
Partial Class Theatres
    Inherits System.Web.UI.Page
    Public Shared go As Integer = 0
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        chose.Visible = False
        ok.Visible = False
    End Sub
    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim Citycode As Integer
        Citycode = Session("loccode")
        Dim tname As String
        tname = TryCast(GridView1.SelectedRow.FindControl("Theatre"), Label).Text
        Dim time As String
        time = TryCast(GridView1.SelectedRow.FindControl("Time"), Label).Text
        If (tname.Length > 0) Then
            chose.Visible = True
            chose.Text = "You Chose " & tname & " at " & time & " Click Ok to proceed"
        End If
        Dim con As New SqlConnection
        con.ConnectionString = "Data Source=HEWLETT-PACKARD\SQLEXPRESS;Initial Catalog=BookMyShow;Integrated Security=True"
        con.Open()
        Dim cmd As New SqlCommand("select TheatreID from Theatres where TheatreName ='" + tname + "' and LocCode= " & Citycode, con)
        Dim sdr As SqlDataReader = cmd.ExecuteReader()
        Dim tcode As Integer
        While sdr.Read = True
            tcode = sdr.Item("TheatreID")
        End While
        Session("tcode") = tcode
        Session("time") = time
        Dim mcode As Integer = Request.QueryString("mcode")
        Session("mcode") = mcode
        ok.Visible = True
        go = 1
        con.Close()
        sdr.Dispose()
        sdr.Close()
    End Sub
    Protected Sub ok_Click(sender As Object, e As EventArgs) Handles ok.Click
        If (go = 1) Then
            Response.Redirect("class.aspx")
        End If
    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("loginpage.aspx")
    End Sub
End Class
