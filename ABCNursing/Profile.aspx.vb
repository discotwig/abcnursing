
Partial Class Profile
    Inherits System.Web.UI.Page
    Dim cn As New Data.SqlClient.SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim UpPath As String
        Dim UpName As String
        UpPath = "C:\Users\IS 4880\Documents\GitHub\abcnursing\ABCNursing\UserProfile"
        UpName = Dir(UpPath, vbDirectory)
        If (UpName = "") Then
            MkDir("C:\Users\IS 4880\Documents\GitHub\abcnursing\ABCNursing\UserProfile")



        End If

    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        cn.Open()

        Dim cmd As New Data.SqlClient.SqlCommand(("INSERT INTO UserProfileImage(UserImagePath) VALUES ('" & FileField.FileName & "')"), cn)
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
            FileField.PostedFile.SaveAs("C:\Users\IS 4880\Documents\GitHub\abcnursing\ABCNursing\UserProfile\" + c)
            span1.InnerHtml = "Your Image has been uploaded sucessfully."

            UploadDetails.Visible = False
        Catch ex As Exception

        End Try


    End Sub
End Class
