Partial Class _Default
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ' Find if user is logged in
        If (Context.User.Identity.IsAuthenticated) Then
            ' Finds user name and says Hi
            lblWelcome.Text = "Hello " + Context.User.Identity.Name & "!"
        Else
            ' It is anonymous user, say hi to guest
            lblWelcome.Text = "Hello Guest!"
        End If
    End Sub
End Class
