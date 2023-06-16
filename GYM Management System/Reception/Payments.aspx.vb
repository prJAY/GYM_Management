Imports System.Data
Imports System.Data.SqlClient

Public Class Payments
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
        str = "select pay_id,m_fname + ' ' + m_lname,plan_id,pay_mode,col_by,col_on from payment_master p, member_master m where p.m_id=m.m_id;"
        cmd = New SqlCommand(str, con)
        da = New SqlDataAdapter(cmd)
        ds = New DataSet
        da.Fill(ds)

        For i = 0 To ds.Tables(0).Rows.Count - 1
            Dim row As New TableRow
            For j = 0 To ds.Tables(0).Columns.Count - 1
                Dim cell As New TableCell
                cell.Text = ds.Tables(0).Rows(i).Item(j).ToString
                row.Cells.Add(cell)
            Next
            Dim cell_edit As New TableCell
            cell_edit.Text = "<a href='PaymentReceipt.aspx?q=" + ds.Tables(0).Rows(i).Item(0).ToString + "' class='text-decoration-none stretched-link'>View</a>"
            row.Cells.Add(cell_edit)
            paymenttable.Rows.Add(row)
        Next
        con.Close()
    End Sub

End Class