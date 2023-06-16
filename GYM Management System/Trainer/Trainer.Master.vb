Public Class Trainer
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Session("UType") Is Nothing) Then
            Response.Redirect("/Login.aspx")
        ElseIf (Session("UType").ToString = "R") Then
            Response.Redirect("/Login.aspx")
        End If
    End Sub

End Class