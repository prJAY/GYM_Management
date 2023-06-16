Imports System.Data
Imports System.Data.SqlClient

Public Class MemberDetails
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(connectionstr.constr())
    Dim cmd As SqlCommand
    Dim dr As SqlDataReader
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim str As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If con.State = Data.ConnectionState.Closed Then
            con.Open()
        End If
        str = "select * from member_master m,member_info i where m.m_id = @id and i.m_id=m.m_id;"
        cmd = New SqlCommand(str, con)
        cmd.Parameters.AddWithValue("@id", Request.QueryString("q").ToString)

        dr = cmd.ExecuteReader
        If dr.HasRows Then
            dr.Read()
            name.Text = dr(1) + " " + dr(2)
            email.Text = dr(6)
            cno.Text = dr(7)
            gen.Text = dr(3)
            bdate.Text = dr(4).ToString.Substring(0, 10)
            jdate.Text = dr(5).ToString.Substring(0, 10)

            father.Text = dr(11).ToString
            mother.Text = dr(12).ToString
            emer_name.Text = dr(13).ToString
            emer_rel.Text = dr(14).ToString
            emer_no.Text = dr(15).ToString
            address.Text = dr(16).ToString

            dr.Close()
        Else
            dr.Close()
            con.Close()
            Response.Redirect("Members.aspx")
        End If

        str = "select col_on,pay_id,plan_id,valid_from,valid_till,pay_mode,col_by from payment_master where m_id = @id;"
        cmd = New SqlCommand(str, con)
        cmd.Parameters.AddWithValue("@id", Request.QueryString("q").ToString)
        da = New SqlDataAdapter(cmd)
        ds = New DataSet
        da.Fill(ds)

        For i = 0 To ds.Tables(0).Rows.Count - 1
            Dim row As New TableRow
            For j = 0 To ds.Tables(0).Columns.Count - 1
                Dim cell As New TableCell
                Dim cellstr As String = ds.Tables(0).Rows(i).Item(j).ToString
                If cellstr.Length > 10 Then
                    cell.Text = ds.Tables(0).Rows(i).Item(j).ToString.Substring(0, 10)
                Else
                    cell.Text = ds.Tables(0).Rows(i).Item(j).ToString
                End If
                row.Cells.Add(cell)
            Next
            Dim cell_edit As New TableCell
            cell_edit.Text = "<a href='PaymentReceipt.aspx?q=" + ds.Tables(0).Rows(i).Item(1).ToString + "' class='text-decoration-none stretched-link'>View</a>"
            row.Cells.Add(cell_edit)
            memhistory.Rows.Add(row)
        Next

        con.Close()

        edit1.HRef += Request.QueryString("q").ToString
        edit2.HRef += Request.QueryString("q").ToString
    End Sub

End Class