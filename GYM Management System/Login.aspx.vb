Imports System.Data
Imports System.Data.SqlClient

Public Class WebForm1
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(connectionstr.constr())
    Dim cmd As SqlCommand
    Dim dr As SqlDataReader
    Dim str As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("UID") = Nothing
        Session("UFname") = Nothing
        Session("ULname") = Nothing
        Session("UType") = Nothing
    End Sub

    Protected Sub loginbtn_Click(ByVal sender As Object, ByVal e As EventArgs) Handles loginbtn.Click
        If con.State = Data.ConnectionState.Closed Then
            con.Open()
        End If
        str = "select * from user_master where user_id = @id and user_password = @Password;"
        cmd = New SqlCommand(str, con)
        cmd.Parameters.AddWithValue("@id", userid.Text)
        cmd.Parameters.AddWithValue("@Password", userpass.Text)

        dr = cmd.ExecuteReader
        If dr.HasRows Then
            dr.Read()
            Session("UID") = dr(0)
            Session("UFname") = dr(1)
            Session("ULname") = dr(2)
            Session("UType") = dr(4)
            dr.Close()
            con.Close()
            If Session("UType") = "M" Then
                Response.Redirect("Manager/Home.aspx")
            ElseIf Session("UType") = "R" Then
                Response.Redirect("Reception/Home.aspx")
            ElseIf Session("UType") = "T" Then
                Response.Redirect("Trainer/Home.aspx")
            End If
        End If
            dr.Close()
            con.Close()
            loginmsg.Text = "User ID or Password is incorrect"
            loginmsg.CssClass = "text-danger"
    End Sub
End Class