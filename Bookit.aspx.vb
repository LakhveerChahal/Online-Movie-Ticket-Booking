Imports System.Data.SqlClient
Imports System
Imports System.Data
Imports System.Net
Imports System.Net.Mail
Imports System.Net.NetworkCredential





Partial Class Bookit
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        Dim tcode, mcode, loccode, uid, noofseats, hallid As Integer
        Dim time, sclass As String
        Dim totalprice As Decimal

        tcode = Session("tcode")
        mcode = Session("mcode")
        loccode = Session("loccode")
        uid = Session("uid")
        noofseats = Session("nseats")
        time = Session("time")
        totalprice = Session("totalprice")
        sclass = Session("class")
        hallid = Session("hallid")

        con.ConnectionString = "Data Source=HEWLETT-PACKARD\SQLEXPRESS;Initial Catalog=BookMyShow;Integrated Security=True "
        cmd.Connection = con
        con.Open()
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandText = "book"
        cmd.Parameters.Add("@tcode", SqlDbType.Int).Value = tcode
        cmd.Parameters.Add("@mcode", SqlDbType.Int).Value = mcode
        cmd.Parameters.Add("@uid", SqlDbType.Int).Value = uid
        cmd.Parameters.Add("@hallid", SqlDbType.Int).Value = hallid
        cmd.Parameters.Add("@loccode", SqlDbType.Int).Value = loccode
        cmd.Parameters.Add("@noofseats", SqlDbType.Int).Value = noofseats
        cmd.Parameters.Add("@time", SqlDbType.VarChar, 20).Value = time
        cmd.Parameters.Add("@price", SqlDbType.Decimal).Value = totalprice
        cmd.Parameters.Add("@seatclass", SqlDbType.VarChar, 20).Value = sclass
        cmd.ExecuteNonQuery()

        Dim cmdd As New SqlCommand
        cmdd.Connection = con
        cmdd.CommandText = ("select UserName from Users where UserID=" & uid)
        Dim sdr As SqlDataReader = cmdd.ExecuteReader
        sdr.Read()
        Dim uname As String = sdr.Item("UserName")
        Label1.Text = uname
        sdr.Close()

        cmdd.CommandText = ("select MovieName from Movies where MovieCode=" & mcode)
        sdr = cmdd.ExecuteReader
        sdr.Read()
        Dim umovie As String = sdr.Item("MovieName")
        Label2.Text = umovie
        sdr.Close()

        cmdd.CommandText = ("select TheatreName from Theatres where TheatreId=" & tcode)
        sdr = cmdd.ExecuteReader
        sdr.Read()
        Dim theatr As String = sdr.Item("TheatreName")
        Label3.Text = theatr
        sdr.Close()

        cmdd.CommandText = ("select Location from Locations where LocCode=" & loccode)
        sdr = cmdd.ExecuteReader
        sdr.Read()
        Dim cname As String = sdr.Item("Location")
        Label4.Text = cname
        sdr.Close()

        cmdd.CommandText = ("select email from Users where UserID=" & uid)
        sdr = cmdd.ExecuteReader
        sdr.Read()
        Dim m As String = sdr.Item("email")
        sdr.Close()

        Label5.Text = hallid
        Label6.Text = noofseats
        Label7.Text = sclass
        Label8.Text = totalprice
        Label9.Text = "Successful"
        Label10.Text = time

        'Dim mail As New MailMessage
        'mail.To.Add(New MailAddress(m))
        'Mail.From = New MailAddress("luckychahal4@gmail.com")
        'mail.Subject = "its's movie time "
        'mail.Body = "  thank you for reaching to us !!!"
        'Dim smtp As New System.Net.Mail.SmtpClient()

        'smtp.Host = "smtp.gmail.com"
        'smtp.Port = 587
        'smtp.UseDefaultCredentials = False
        'smtp.Credentials = New System.Net.NetworkCredential("luckychahal4@gmail.com", "@lakhveer476")
        'smtp.EnableSsl = True
        'smtp.send(mail)
        con.Close()

    End Sub
    Protected Sub logout_Click(sender As Object, e As EventArgs) Handles logout.Click
        Response.Redirect("loginpage.aspx")
    End Sub
End Class
