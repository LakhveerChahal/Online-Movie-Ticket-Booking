Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports Microsoft.VisualBasic
Imports System.Windows
Imports System.Collections



Partial Class _class

    Inherits System.Web.UI.Page
    Public Shared avail As Integer = -1
    Public Shared sprice As Decimal = 0
    Public Shared totalprice As Decimal = 0


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        chose.Visible = False
        available.Visible = False
        seats.Visible = False
        check.Visible = False
        Number.Visible = False
        price.Visible = False
        proceed.Visible = False
        Chk.Visible = False

    End Sub
    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

        Dim tname As String = TryCast(GridView1.SelectedRow.FindControl("Theatre"), Label).Text
        Dim seatclass As String = TryCast(GridView1.SelectedRow.FindControl("seatsclass"), Label).Text
        sprice = TryCast(GridView1.SelectedRow.FindControl("totalprice"), Label).Text
        Session("class") = seatclass
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        Dim tcode, mcode, loccode As Integer
        Dim time As String
        Dim hallid As Integer
        tcode = Session("tcode")
        mcode = Session("mcode")
        loccode = Session("loccode")
        time = Session("time")
        con.ConnectionString = "Data Source= HEWLETT-PACKARD\SQLEXPRESS;Initial Catalog=BookMyShow;Integrated Security=True"
        con.Open()

        cmd.Connection = con
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandText = "hallsandcapacity"
        cmd.Parameters.Add("@tcode", SqlDbType.Int).Value = tcode
        cmd.Parameters.Add("@mcode", SqlDbType.Int).Value = mcode
        cmd.Parameters.Add("@citycode", SqlDbType.Int).Value = loccode
        cmd.Parameters.Add("@time", SqlDbType.VarChar, 20).Value = time
        cmd.Parameters.Add("@class", SqlDbType.VarChar, 10).Value = seatclass
        cmd.Parameters.Add("@hallid", SqlDbType.Int).Direction = ParameterDirection.Output
        cmd.Parameters.Add("@avail", SqlDbType.Int).Direction = ParameterDirection.Output
        cmd.ExecuteNonQuery()

        hallid = cmd.Parameters("@hallid").Value
        avail = cmd.Parameters("@avail").Value
        Session("hallid") = hallid
        con.Close()

        If (tname.Length > 0) Then
            chose.Visible = True
            available.Visible = True
            Chk.Visible = True
            seats.Visible = True
            available.Text = "Seats Available = " & avail
            Number.Visible = True
            chose.Text = "You chose : " & seatclass & " Class "
            price.Visible = True
        End If

    End Sub
    Protected Sub seats_TextChanged(sender As Object, e As EventArgs) Handles seats.TextChanged

        If (seats.Text.Length > 0) Then
            Chk.Visible = True
        End If
    End Sub
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles proceed.Click
        chose.Visible = True
        available.Visible = True
        seats.Visible = True
        Number.Visible = True
        price.Visible = True
        proceed.Visible = True
        Session("totalprice") = totalprice

        Response.Redirect("FinalInfo.aspx")
    End Sub
    Protected Sub Chk_Click(sender As Object, e As EventArgs) Handles Chk.Click
        If seats.Text.Length > 0 Then
            Dim enter As Integer = CType(seats.Text, String)
            If (avail = -1 Or enter > avail) Then
                check.Visible = True
                chose.Visible = True
                seats.Visible = True
                available.Visible = True
                Chk.Visible = True
                Number.Visible = True
                check.Text = "Invalid Entry"
            Else
                chose.Visible = True
                available.Visible = True
                seats.Visible = True
                Number.Visible = True
                price.Visible = True
                proceed.Visible = True

                Dim s As Integer = enter
                totalprice = s * sprice
                Session("nseats") = s
                price.Text = "Total price : " & totalprice

            End If
        End If
    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("loginpage.aspx")
    End Sub
End Class
