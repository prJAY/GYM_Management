Imports System.Data
Imports System.Data.SqlClient
Public Class NewPlan
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(connectionstr.constr())
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim str As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnAddPlan_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnAddPlan.Click
        If con.State = Data.ConnectionState.Closed Then
            con.Open()
        End If
        Dim n As Integer
        Try
            Dim pid As String
            pid = val.Text + "M_" + plantype.SelectedValue
            str = "insert into membership_plans values(@id,@ptype,@val,@amt);"
            cmd = New SqlCommand(str, con)
            cmd.Parameters.AddWithValue("@id", pid)
            cmd.Parameters.AddWithValue("@ptype", plantype.SelectedValue)
            cmd.Parameters.AddWithValue("@val", val.Text)
            cmd.Parameters.AddWithValue("@amt", amt.Text)
            n = cmd.ExecuteNonQuery
        Catch ex As Exception
            lblmsg.Text = "Plan data not added"
            msgdiv.Attributes.Add("class", "bg-danger container my-4 rounded-3 shadow")
        End Try
        If n = 1 Then
            lblmsg.Text = "Plan has been added successfully"
            msgdiv.Attributes.Add("class", "bg-success container my-4 rounded-3 shadow")
        End If
        msgdiv.Visible = True
        con.Close()

        val.Text = ""
        amt.Text = ""
    End Sub
End Class