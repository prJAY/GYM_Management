Public Class Home2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            greetlbl.Text = "<b>Welcome " + Session("UFname").ToString + "</b>"
        Catch ex As Exception

        End Try
    End Sub

End Class