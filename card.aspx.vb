
Partial Class card
    Inherits System.Web.UI.Page

    Protected Sub Proceed_Click(sender As Object, e As EventArgs) Handles Proceed.Click
        If (cardno.Text.Length > 0 And cvvno.Text.Length > 0 And name.Text.Length > 0) Then
            Response.Redirect("bookit.aspx")
        End If
    End Sub
End Class
