
Partial Class info
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim sclass As String
        sclass = Session("class")
        Label1.Text = sclass
        Dim nseats As Integer = Session("nseats")
        Label2.Text = nseats
        Dim total As Decimal = Session("totalprice")
        Dim sprice As Decimal = total / nseats

        Label3.Text = sprice & " * " & nseats & " = " & total

    End Sub
    Protected Sub proceed_Click(sender As Object, e As EventArgs) Handles proceed.Click
        Dim s As String = DropDownList1.Text
        If (s = "Debit card/Credit Card") Then
            Response.Redirect("card.aspx")
        End If
        If (s = "Paytm") Then
            Response.Redirect("Paytm.aspx")
        End If
    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("loginpage.aspx")
    End Sub
End Class
