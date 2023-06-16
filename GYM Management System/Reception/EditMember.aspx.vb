Imports System.Data
Imports System.Data.SqlClient

Public Class EditMember
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
            str = "select * from member_master where m_id = @id;"
            cmd = New SqlCommand(str, con)
            cmd.Parameters.AddWithValue("@id", Request.QueryString("q").ToString)

            dr = cmd.ExecuteReader
            If dr.HasRows Then
                dr.Read()
                fname.Text = dr(1)
                lname.Text = dr(2)
                email.Text = dr(6)
                cno.Text = dr(7)
                rdogender.SelectedValue = dr(3)
                bdate.Text = dr(4).ToString.Substring(0, 10)
                jdate.Text = dr(5).ToString.Substring(0, 10)
                dr.Close()
                con.Close()
            Else
                dr.Close()
                con.Close()
                Response.Redirect("Members.aspx")
            End If
        End If
    End Sub

    Protected Sub btnSaveUser_Click(sender As Object, e As EventArgs) Handles btnSaveUser.Click
        If con.State = Data.ConnectionState.Closed Then
            con.Open()
        End If
        Dim n As Integer
        Try
            str = "update member_master set m_fname=@fname ,m_lname=@lname ,m_gender=@gen ,m_dob=@dob ,m_joindate=@join ,m_email=@email ,m_contact=@con where m_id=@id;"
            cmd = New SqlCommand(str, con)
            cmd.Parameters.AddWithValue("@id", Request.QueryString("q").ToString)
            cmd.Parameters.AddWithValue("@fname", fname.Text)
            cmd.Parameters.AddWithValue("@lname", lname.Text)
            cmd.Parameters.AddWithValue("@gen", rdogender.SelectedValue)
            cmd.Parameters.AddWithValue("@dob", bdate.Text)
            cmd.Parameters.AddWithValue("@join", jdate.Text)
            cmd.Parameters.AddWithValue("@email", email.Text)
            cmd.Parameters.AddWithValue("@con", cno.Text)
            n = cmd.ExecuteNonQuery
        Catch ex As Exception
            lblmsg.Text = "Member data not updated"
            msgdiv.Attributes.Add("class", "bg-danger container my-4 rounded-3 shadow")
        End Try
        If n = 1 Then
            lblmsg.Text = "Member data updated successfully"
            msgdiv.Attributes.Add("class", "bg-success container my-4 rounded-3 shadow")
        End If
        msgdiv.Visible = True
        con.Close()
    End Sub

    Protected Sub btnCancel_Click(sender As Object, e As EventArgs) Handles btnCancel.Click
        Response.Redirect("/Reception/MemberDetails.aspx?q=" + Request.QueryString("q").ToString)
    End Sub
End Class