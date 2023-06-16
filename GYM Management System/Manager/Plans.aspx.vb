Imports System.Data
Imports System.Data.SqlClient

Public Class Plans
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(connectionstr.constr())
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim str As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If con.State = Data.ConnectionState.Closed Then
            con.Open()
        End If
        str = "select * from membership_plans;"
        cmd = New SqlCommand(str, con)
        da = New SqlDataAdapter(cmd)
        ds = New DataSet
        da.Fill(ds)

        For i = 0 To ds.Tables(0).Rows.Count - 1
            Dim row As New TableRow
            Dim cell_id As New TableCell
            Dim cell_name As New TableCell
            Dim cell_val As New TableCell
            Dim cell_amt As New TableCell
            Dim cell_edit As New TableCell

            cell_id.Text = ds.Tables(0).Rows(i).Item(0).ToString
            cell_name.Text = ds.Tables(0).Rows(i).Item(1).ToString
            cell_val.Text = ds.Tables(0).Rows(i).Item(2).ToString
            cell_amt.Text = ds.Tables(0).Rows(i).Item(3).ToString
            cell_edit.Text = "<a href='EditPlan.aspx?q=" + cell_id.Text + "' class='text-decoration-none stretched-link'>Edit</a>"

            row.Cells.Add(cell_id)
            row.Cells.Add(cell_name)
            row.Cells.Add(cell_val)
            row.Cells.Add(cell_amt)
            row.Cells.Add(cell_edit)

            usertable.Rows.Add(row)
        Next
        con.Close()
    End Sub

End Class