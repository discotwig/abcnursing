Imports System.Data.SqlClient
Imports System.Data
Imports System.Configuration
Imports System.Web.Security
Partial Class Login
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            If Me.Page.User.Identity.IsAuthenticated Then
                FormsAuthentication.SignOut()
                Response.Redirect("~/Login.aspx", False)
            Else
                Session.Abandon()
                Session.Clear()
            End If
        End If
    End Sub
    Protected Sub Login1_Authenticate(sender As Object, e As AuthenticateEventArgs) Handles Login1.Authenticate
        ' Initialize FormsAuthentication, for what it's worth
        FormsAuthentication.Initialize()
        Dim userId As Integer = 0
        Dim roles As String = String.Empty
        Dim con As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")
        Using cmd As New SqlCommand("Validate_User")
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.AddWithValue("@Username", Login1.UserName)
            cmd.Parameters.AddWithValue("@Password", Login1.Password)
            cmd.Connection = con
            con.Open()
            Dim reader As SqlDataReader = cmd.ExecuteReader()
            reader.Read()
            userId = Convert.ToInt32(reader("UserID"))
            roles = reader("Roles").ToString()
            con.Close()
        End Using
        Select Case userId
            Case -1
                Login1.FailureText = "Username and/or password is incorrect."
                Exit Select
            Case -2
                Login1.FailureText = "Account has not been activated."
                Exit Select
            Case Else
                Dim ticket As New FormsAuthenticationTicket(1, Login1.UserName, DateTime.Now, DateTime.Now.AddMinutes(2880), Login1.RememberMeSet, roles, FormsAuthentication.FormsCookiePath)
                Dim hash As String = FormsAuthentication.Encrypt(ticket)
                Dim cookie As New HttpCookie(FormsAuthentication.FormsCookieName, hash)
                If ticket.IsPersistent Then
                    cookie.Expires = ticket.Expiration
                End If
                Response.Cookies.Add(cookie)
                Response.Redirect(FormsAuthentication.GetRedirectUrl(Login1.UserName, Login1.RememberMeSet), False)

                Exit Select
        End Select
    End Sub
End Class