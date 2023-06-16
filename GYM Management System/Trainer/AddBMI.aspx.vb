Imports System.Data
Imports System.Data.SqlClient
Public Class AddBMI
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(connectionstr.constr())
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim str As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub addbmi_Click1(sender As Object, e As EventArgs) Handles addbmi.Click
        If con.State = Data.ConnectionState.Closed Then
            con.Open()
        End If
        Dim n As Integer
        Try
            str = "insert into bmi_master (m_id,date,weight,fat,bodyage,bmi,kcal,vfat,sfat,muscal) values(@id,@date,@weight,@fat,@bodyage,@bmi,@kcal,@vfat,@sfat,@muscal);"
            cmd = New SqlCommand(str, con)
            cmd.Parameters.AddWithValue("@id", Request.QueryString("q").ToString)
            cmd.Parameters.AddWithValue("@date", DateTime.Now.Date.ToString("dd-MM-yyyy"))
            cmd.Parameters.AddWithValue("@weight", weight.Text)
            cmd.Parameters.AddWithValue("@fat", fat.Text)
            cmd.Parameters.AddWithValue("@bodyage", bodyage.Text)
            cmd.Parameters.AddWithValue("@bmi", bmi.Text)
            cmd.Parameters.AddWithValue("@kcal", kcal.Text)
            cmd.Parameters.AddWithValue("@vfat", vfat.Text)
            cmd.Parameters.AddWithValue("@sfat", sfat.Text)
            cmd.Parameters.AddWithValue("@muscal", muscal.Text)
            n = cmd.ExecuteNonQuery

            con.Close()
        Catch ex As Exception
            lblmsg.Text = "BMI data not added"
            msgdiv.Attributes.Add("class", "bg-danger container my-4 rounded-3 shadow")
        End Try
        If n = 1 Then
            Response.Redirect("MemberBMI.aspx?q=" + Request.QueryString("q").ToString)
        End If
    End Sub

    Protected Sub cancel_Click(sender As Object, e As EventArgs) Handles cancel.Click
        Response.Redirect("MemberBMI.aspx?q=" + Request.QueryString("q").ToString)
    End Sub
End Class