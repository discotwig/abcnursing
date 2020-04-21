
Partial Class Addbaby
    Inherits System.Web.UI.Page
    Dim cn As New Data.SqlClient.SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")
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

        Dim UpPath As String
        Dim UpName As String
        UpPath = "C:\UploadUserFiles"
        UpName = Dir(UpPath, vbDirectory)
        If (UpName = "") Then
            MkDir("C:\UploadUserFiles")
        End If
    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        cn.Open()

        Dim cmd As New Data.SqlClient.SqlCommand(("INSERT INTO Baby(FirstName,LastName,Gender,DOB,Weight,) VALUES '" & TextBox1.Text & "','" & TextBox2.Text & "','" & DropDownList1.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "')"), cn)
        cmd.ExecuteNonQuery()
        cn.Close()

        FileName.InnerHtml = FileField.PostedFile.FileName
        FileContent.InnerHtml = FileField.PostedFile.ContentType
        FileSize.InnerHtml = FileField.PostedFile.ContentLength
        UploadDetails.Visible = True
        Dim myFileName As String
        myFileName = FileField.PostedFile.FileName
        Dim c As String = System.IO.Path.GetFileName(myFileName)

        Try
            FileField.PostedFile.SaveAs("C:\UploadUserFiles\" + c)
            span1.InnerHtml = "File Uploaded Successful."

            UploadDetails.Visible = False
        Catch ex As Exception

        End Try

        lblMessage.Text = "Data has been saved successfully"

    End Sub

End Class
