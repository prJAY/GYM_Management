Imports System.Data
Imports System.Data.SqlClient
Public Class NewMember
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(connectionstr.constr())
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim str As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        jdate.Text = DateTime.Now.ToString("yyyy-MM-dd")
    End Sub

    Protected Sub btnAddUser_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnAddUser.Click
        If con.State = Data.ConnectionState.Closed Then
            con.Open()
        End If
        Dim n, id As Integer
        str = "Select Next VALUE For member_count"
        cmd = New SqlCommand(str, con)
        id = cmd.ExecuteScalar

        Try
            str = "insert into member_master (m_id,m_fname,m_lname,m_gender,m_dob,m_joindate,m_email,m_contact,m_reg_by,m_valid_till) values(@id,@fname,@lname,@gen,@dob,@join,@email,@con,@regby,@validtill);"
            cmd = New SqlCommand(str, con)
            cmd.Parameters.AddWithValue("@id", id)
            cmd.Parameters.AddWithValue("@fname", fname.Text)
            cmd.Parameters.AddWithValue("@lname", lname.Text)
            cmd.Parameters.AddWithValue("@gen", rdogender.SelectedValue)
            cmd.Parameters.AddWithValue("@dob", bdate.Text)
            cmd.Parameters.AddWithValue("@join", jdate.Text)
            cmd.Parameters.AddWithValue("@email", email.Text)
            cmd.Parameters.AddWithValue("@con", cno.Text)
            cmd.Parameters.AddWithValue("@regby", Session("UID").ToString)
            cmd.Parameters.AddWithValue("@validtill", jdate.Text)
            n = cmd.ExecuteNonQuery
        Catch ex As Exception
            lblmsg.Text = "Member data not added"
            msgdiv.Attributes.Add("class", "bg-danger container my-4 rounded-3 shadow")
        End Try
        If n = 1 Then
            Try
                str = "insert into member_info values(@id,@father,@mother,@emer_name,@emer_rel,@emer_no,@add);"
                cmd = New SqlCommand(str, con)
                cmd.Parameters.AddWithValue("@id", id)
                cmd.Parameters.AddWithValue("@father", father.Text)
                cmd.Parameters.AddWithValue("@mother", mother.Text)
                cmd.Parameters.AddWithValue("@emer_name", emer_name.Text)
                cmd.Parameters.AddWithValue("@emer_rel", emer_rel.Text)
                cmd.Parameters.AddWithValue("@emer_no", emer_no.Text)
                cmd.Parameters.AddWithValue("@add", address.Text)
                n = cmd.ExecuteNonQuery
            Catch ex As Exception
                lblmsg.Text = "Member added, additional info not added"
                msgdiv.Attributes.Add("class", "bg-danger container my-4 rounded-3 shadow")
            End Try
            If n = 1 Then
                lblmsg.Text = "New member has been added"
                msgdiv.Attributes.Add("class", "bg-success container my-4 rounded-3 shadow")

                Dim redir As New HtmlMeta()
                redir.Attributes.Add("http-equiv", "REFRESH")
                redir.Attributes.Add("content", "5; url='/Reception/Members.aspx'")
                Page.Header.Controls.Add(redir)
            End If
        End If
        msgdiv.Visible = True
        con.Close()
    End Sub
End Class