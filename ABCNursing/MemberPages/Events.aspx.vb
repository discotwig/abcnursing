
Partial Class Events
    Inherits System.Web.UI.Page
    Protected Overrides Sub Finalize()
        MyBase.Finalize()
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.IsAuthenticated Then
            Dim messege As String = "welcome"
        Else
            Response.Redirect("~/Redirect.aspx")
        End If
        ' Find if user is logged in
        If (Context.User.Identity.IsAuthenticated) Then
            ' Finds user name and says Hi
            'lblWelcome.Text = "Hello Administrator " + Context.User.Identity.Name & ", welcome to the admin tools!"
        Else
            ' It is anonymous user, say hi to guest
            'lblWelcome.Text = "ERROR"
        End If
    End Sub

    Protected Sub Calendar1_SelectionChanged(sender As Object, e As EventArgs) Handles Calendar1.SelectionChanged
        'when calender changes
    End Sub
End Class
