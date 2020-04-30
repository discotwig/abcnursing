
Partial Class Addbaby
    Inherits System.Web.UI.Page
    Dim cn As New Data.SqlClient.SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        Dim UpPath As String
        Dim UpName As String
        UpPath = "C:\Users\IS 4880\Documents\GitHub\abcnursing\ABCNursing\BabyImage"
        UpName = Dir(UpPath, vbDirectory)
        If (UpName = "") Then
            MkDir("C:\Users\IS 4880\Documents\GitHub\abcnursing\ABCNursing\BabyImage")
        End If
    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        cn.Open()

        Dim cmd As New Data.SqlClient.SqlCommand(("INSERT INTO Baby(FirstName,LastName,Gender,DOB,Weight,BabyImageURL) VALUES ('" & TextBox1.Text & "','" & TextBox2.Text & "','" & DropDownList1.SelectedValue & "','" & TextBox3.Text & "','" & TextBox4.Text & "', '" & FileField.FileName & "')"), cn)
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
            FileField.PostedFile.SaveAs("C:\Users\IS 4880\Documents\GitHub\abcnursing\ABCNursing\BabyImage\" + c)
            span1.InnerHtml = "Data has been saved sucessfully."

            UploadDetails.Visible = False
        Catch ex As Exception

        End Try


    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        TextBox1.Text = ""
        TextBox2.Text = ""
        DropDownList1.SelectedValue = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
    End Sub


End Class
