Imports System.Data
Imports System.Data.SqlClient

Public Class Receipt
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(connectionstr.constr())
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim str As String

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        membertable.Visible = False
        msg.Text = ""
        If con.State = Data.ConnectionState.Closed Then
            con.Open()
        End If
        str = "select * from payment_master where m_id= @id;"
        cmd = New SqlCommand(str, con)
        cmd.Parameters.AddWithValue("id", mid.Text)
        da = New SqlDataAdapter(cmd)
        ds = New DataSet
        da.Fill(ds)

        If ds.Tables(0).Rows.Count > 0 Then
            For i = 0 To ds.Tables(0).Rows.Count - 1
                Dim row As New TableRow
                Dim cell_dt As New TableCell
                Dim cell_plan As New TableCell
                Dim cell_amt As New TableCell
                Dim cell_edit As New TableCell

                cell_dt.Text = ds.Tables(0).Rows(i).Item(11).ToString.Substring(0, 10)
                cell_plan.Text = ds.Tables(0).Rows(i).Item(2).ToString
                cell_amt.Text = ds.Tables(0).Rows(i).Item(8).ToString
                cell_edit.Text = "<a href='/Reception/PaymentReceipt.aspx?q=" + ds.Tables(0).Rows(i).Item(0).ToString + "' class='text-decoration-none'>View</a>"

                row.Cells.Add(cell_dt)
                row.Cells.Add(cell_plan)
                row.Cells.Add(cell_amt)
                row.Cells.Add(cell_edit)

                membertable.Rows.Add(row)
                membertable.Visible = True
            Next
        Else
            msg.Text = "Payments of this member not found. Please Check Member ID."
        End If

        con.Close()
    End Sub
End Class