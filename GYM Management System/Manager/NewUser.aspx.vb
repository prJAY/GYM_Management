Imports System.Data
Imports System.Data.SqlClient
Public Class NewUser
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(connectionstr.constr())
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim str As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnAddUser_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnAddUser.Click
        If con.State = Data.ConnectionState.Closed Then
            con.Open()
        End If
        Dim n As Integer
        Try
            str = "insert into user_master values(@id,@fname,@lname,@pass,@type);"
            cmd = New SqlCommand(str, con)
            cmd.Parameters.AddWithValue("@id", uid.Text)
            cmd.Parameters.AddWithValue("@fname", fname.Text)
            cmd.Parameters.AddWithValue("@lname", lname.Text)
            cmd.Parameters.AddWithValue("@pass", upass.Text)
            cmd.Parameters.AddWithValue("@type", utype.SelectedValue)
            n = cmd.ExecuteNonQuery
        Catch ex As Exception
            lblmsg.Text = "User data not added"
            msgdiv.Attributes.Add("class", "bg-danger container my-4 rounded-3 shadow")
        End Try
        If n = 1 Then
            lblmsg.Text = "User has been added successfully"
            msgdiv.Attributes.Add("class", "bg-success container my-4 rounded-3 shadow")
        End If
        msgdiv.Visible = True
        con.Close()

        uid.Text = ""
        fname.Text = ""
        lname.Text = ""
        upass.Text = ""
        utype.SelectedIndex = 0

    End Sub
End Class