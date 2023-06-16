Imports System.Data
Imports System.Data.SqlClient

Public Class Members1
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
        str = "select m_id,m_fname,m_lname,m_dob from member_master;"
        cmd = New SqlCommand(str, con)
        da = New SqlDataAdapter(cmd)
        ds = New DataSet
        da.Fill(ds)

        For i = 0 To ds.Tables(0).Rows.Count - 1
            Dim row As New TableRow
            Dim cell_id As New TableCell
            Dim cell_name As New TableCell
            Dim cell_dob As New TableCell
            Dim cell_edit As New TableCell

            cell_id.Text = ds.Tables(0).Rows(i).Item(0).ToString
            cell_name.Text = ds.Tables(0).Rows(i).Item(1).ToString + " " + ds.Tables(0).Rows(i).Item(2).ToString
            cell_dob.Text = ds.Tables(0).Rows(i).Item(3).ToString.Substring(0, 10)
            cell_edit.Text = "<a href='MemberBMI.aspx?q=" + cell_id.Text + "' class='text-decoration-none stretched-link'>View</a>"

            row.Cells.Add(cell_id)
            row.Cells.Add(cell_name)
            row.Cells.Add(cell_dob)
            row.Cells.Add(cell_edit)

            membertable.Rows.Add(row)
        Next
        con.Close()
    End Sub

End Class