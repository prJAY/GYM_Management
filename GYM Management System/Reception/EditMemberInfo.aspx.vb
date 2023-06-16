Imports System.Data
Imports System.Data.SqlClient

Public Class EditMemberInfo
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
            str = "select * from member_info where m_id = @id;"
            cmd = New SqlCommand(str, con)
            cmd.Parameters.AddWithValue("@id", Request.QueryString("q").ToString)

            dr = cmd.ExecuteReader
            If dr.HasRows Then
                dr.Read()
                father.Text = dr(1).ToString
                mother.Text = dr(2).ToString
                emer_name.Text = dr(3).ToString
                emer_rel.Text = dr(4).ToString
                emer_no.Text = dr(5).ToString
                address.Text = dr(6).ToString
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
            str = "update member_info set m_father=@father,m_mother=@mother,m_emer_name=@emer_name,m_emer_rel=@emer_rel,m_emer_no=@emer_no,m_address=@add where m_id=@id;"
            cmd = New SqlCommand(str, con)
            cmd.Parameters.AddWithValue("@id", Request.QueryString("q").ToString)
            cmd.Parameters.AddWithValue("@father", father.Text)
            cmd.Parameters.AddWithValue("@mother", mother.Text)
            cmd.Parameters.AddWithValue("@emer_name", emer_name.Text)
            cmd.Parameters.AddWithValue("@emer_rel", emer_rel.Text)
            cmd.Parameters.AddWithValue("@emer_no", emer_no.Text)
            cmd.Parameters.AddWithValue("@add", address.Text)
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