Imports System.Data
Imports System.Data.SqlClient
Public Class EditPlan
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
            str = "select * from membership_plans where plan_id = @id;"
            cmd = New SqlCommand(str, con)
            cmd.Parameters.AddWithValue("@id", Request.QueryString("q").ToString)

            dr = cmd.ExecuteReader
            If dr.HasRows Then
                dr.Read()
                pid.Text = dr(0)
                pname.Text = dr(1)
                val.Text = dr(2)
                amt.Text = dr(3)
                dr.Close()
                con.Close()
            Else
                dr.Close()
                con.Close()
                Response.Redirect("Plans.aspx")
            End If
        End If
    End Sub

    Protected Sub btnAddPlan_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnAddPlan.Click
        If con.State = Data.ConnectionState.Closed Then
            con.Open()
        End If
        Dim n As Integer
        Try
            str = "update membership_plans set plan_amount = @amt where plan_id = @id;"
            cmd = New SqlCommand(str, con)
            cmd.Parameters.AddWithValue("@id", Request.QueryString("q").ToString)
            cmd.Parameters.AddWithValue("@amt", amt.Text)
            n = cmd.ExecuteNonQuery
        Catch ex As Exception
            lblmsg.Text = "Plan details not updated"
            msgdiv.Attributes.Add("class", "bg-danger container my-4 rounded-3 shadow")
        End Try
        If n = 1 Then
            lblmsg.Text = "Plan details updated successfully"
            msgdiv.Attributes.Add("class", "bg-success container my-4 rounded-3 shadow")
        End If
        msgdiv.Visible = True
        con.Close()
    End Sub

    Protected Sub btnDeleteUser_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnDeleteUser.Click
        If con.State = Data.ConnectionState.Closed Then
            con.Open()
        End If
        Dim n As Integer
        Try
            str = "delete from membership_plans where plan_id = @id;"
            cmd = New SqlCommand(str, con)
            cmd.Parameters.AddWithValue("@id", Request.QueryString("q").ToString)
            n = cmd.ExecuteNonQuery
        Catch ex As Exception
            lblmsg.Text = "Plan not deleted"
            msgdiv.Attributes.Add("class", "bg-danger container my-4 rounded-3 shadow")
        End Try
        If n = 1 Then
            Response.Redirect("Plans.aspx")
        End If
        msgdiv.Visible = True
        con.Close()
    End Sub
End Class