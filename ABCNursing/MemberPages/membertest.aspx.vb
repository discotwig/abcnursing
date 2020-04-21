
Partial Class MemberPages_membertest
    Inherits System.Web.UI.Page
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
End Class
