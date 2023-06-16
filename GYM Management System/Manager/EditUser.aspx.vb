Imports System.Data
Imports System.Data.SqlClient

Public Class EditUser
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(connectionstr.constr())
    Dim cmd As SqlCommand
    Dim dr As SqlDataReader
    Dim str As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            If con.State = Data.ConnectionState.Closed Then
                con.Open()
            End If
            str = "select * from user_master where user_id = @id;"
            cmd = New SqlCommand(str, con)
            cmd.Parameters.AddWithValue("@id", Request.QueryString("q").ToString)

            dr = cmd.ExecuteReader
            If dr.HasRows Then
                dr.Read()
                uid.Text = dr(0)
                fname.Text = dr(1)
                lname.Text = dr(2)
                upass.Text = dr(3)
                utype.SelectedValue = dr(4)
                dr.Close()
                con.Close()
            Else
                dr.Close()
                con.Close()
                Response.Redirect("Users.aspx")
            End If
        End If
    End Sub

    Protected Sub btnSaveUser_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSaveUser.Click
        If con.State = Data.ConnectionState.Closed Then
            con.Open()
        End If
        Dim n As Integer
        Try
            str = "update user_master set user_fname = @fname, user_lname = @lname, user_password = @pass, user_type = @type where user_id = @id;"
            cmd = New SqlCommand(str, con)
            cmd.Parameters.AddWithValue("@id", uid.Text)
            cmd.Parameters.AddWithValue("@fname", fname.Text)
            cmd.Parameters.AddWithValue("@lname", lname.Text)
            cmd.Parameters.AddWithValue("@pass", upass.Text)
            cmd.Parameters.AddWithValue("@type", utype.SelectedValue)
            n = cmd.ExecuteNonQuery
        Catch ex As Exception
            lblmsg.Text = "User data not updated"
            msgdiv.Attributes.Add("class", "bg-danger container my-4 rounded-3 shadow")
        End Try
        If n = 1 Then
            lblmsg.Text = "User data updated successfully"
            msgdiv.Attributes.Add("class", "bg-success container my-4 rounded-3 shadow")
        End If
        msgdiv.Visible = True
        con.Close()
    End Sub

    Protected Sub btnDeleteUSer_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnDeleteUser.Click
        If con.State = Data.ConnectionState.Closed Then
            con.Open()
        End If
        Dim n As Integer
        Try
            str = "delete from user_master where user_id = @id;"
            cmd = New SqlCommand(str, con)
            cmd.Parameters.AddWithValue("@id", uid.Text)
            n = cmd.ExecuteNonQuery
        Catch ex As Exception
            lblmsg.Text = "User data not deleted"
            msgdiv.Attributes.Add("class", "bg-danger container my-4 rounded-3 shadow")
        End Try
        If n = 1 Then
            Response.Redirect("Users.aspx")
        End If
        msgdiv.Visible = True
        con.Close()
    End Sub
End Class