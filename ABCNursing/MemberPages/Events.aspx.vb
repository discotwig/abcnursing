
Partial Class Events
    Inherits System.Web.UI.Page
    Protected Overrides Sub Finalize()
        MyBase.Finalize()
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            If Me.Page.User.Identity.IsAuthenticated Then
                FormsAuthentication.SignOut()
                Response.Redirect("~/Login.aspx")
            Else
                Session.Abandon()
                Session.Clear()
            End If
        End If
    End Sub

    Protected Sub Calendar1_SelectionChanged(sender As Object, e As EventArgs) Handles Calendar1.SelectionChanged
        'when calender changes
    End Sub
End Class
