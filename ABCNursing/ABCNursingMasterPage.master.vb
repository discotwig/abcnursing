
Partial Class ABCNursingMasterPage
    Inherits System.Web.UI.MasterPage
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ' Find if user is logged in
        If (Context.User.Identity.IsAuthenticated) Then
            lblUser.Text = <a href="/LogIn.aspx">Sign Out</a>
            lblSignUp.Text = " "
        Else
            lblUser.Text = <a href="/Login.aspx"> Log In</a>
            lblSignUp.Text = <a href="/Signup.aspx">Sign Up</a>
        End If
        If (Context.User.IsInRole("Admin")) Then
            lblAdmin.Text = <a href="/AdminPages/AdminUserProfile.aspx">Admin</a>
        End If
    End Sub
End Class

