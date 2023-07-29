Imports System.Data.SqlClient
Imports System.Reflection.Emit

Partial Class _Default
    Inherits System.Web.UI.Page


    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        'code insert
        Dim connString As String = ConfigurationManager.ConnectionStrings("abc").ConnectionString
        Dim con As New SqlConnection(connString)

        con.Open()


        Dim cmd As New SqlCommand("insert into car2(id,car_name,car_type,car_price,car_date,image)" &
                                        "values(@id,@car_name,@car_type,@car_price,@car_date,@image)", con)

        cmd.Parameters.AddWithValue("@id", TextBox1.Text)
        cmd.Parameters.AddWithValue("@car_name", TextBox2.Text)
        cmd.Parameters.AddWithValue("@car_type", TextBox3.Text)
        cmd.Parameters.AddWithValue("@car_price", TextBox4.Text)
        cmd.Parameters.AddWithValue("@car_date", TextBox5.Text)
        cmd.Parameters.AddWithValue("image", TextBox6.Text)
        cmd.ExecuteNonQuery()
        con.Close()
        SqlDataSource1.DataBind()
        GridView1.DataBind()
        Label1.Text = "save done"

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        If FileUpload1.PostedFile.FileName = Nothing Then
            Label5.Text = "لم يتم اختيار ملف لرفع"
            Exit Sub
        End If
        Dim path As String = Server.MapPath("~/Image/") & IO.Path.GetFileName(FileUpload1.PostedFile.FileName)

        Dim Extfile As String
        Extfile = IO.Path.GetExtension(path)
        If Extfile <> ".jpg" And Extfile <> ".jpg" Then
            Label5.Text = "نوع الملف الذي تم اختياره غير مسموح به"
            Exit Sub
        End If


        Dim filesize = FileUpload1.PostedFile.ContentLength
        'MsgBox (filesize)
        'الحجم بالبايب يجب وضع الرقم بالبايث"


        Session("img") = FileUpload1.PostedFile.FileName
        FileUpload1.PostedFile.SaveAs(path)
        Image1.ImageUrl = "~/Image/" + IO.Path.GetFileName(FileUpload1.PostedFile.FileName)

    End Sub
End Class
