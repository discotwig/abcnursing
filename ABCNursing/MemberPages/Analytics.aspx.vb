Imports System.Data.SqlClient
Partial Class Analytics
    Inherits System.Web.UI.Page
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
End Class
