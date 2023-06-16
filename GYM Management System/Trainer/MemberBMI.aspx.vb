Imports System.Data
Imports System.Data.SqlClient

Public Class MemberBMI
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
        str = "select * from member_master where m_id = @id;"
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

            dr.Close()
        Else
            dr.Close()
            con.Close()
            Response.Redirect("Members.aspx")
        End If

        str = "select * from bmi_master where m_id = @id;"
        cmd = New SqlCommand(str, con)
        cmd.Parameters.AddWithValue("@id", Request.QueryString("q").ToString)
        da = New SqlDataAdapter(cmd)
        ds = New DataSet
        da.Fill(ds)

        For i = 0 To ds.Tables(0).Rows.Count - 1
            Dim row As New TableRow
            For j = 2 To ds.Tables(0).Columns.Count - 1
                Dim cell As New TableCell
                cell.Text = ds.Tables(0).Rows(i).Item(j).ToString
                row.Cells.Add(cell)
            Next
            bmitable.Rows.Add(row)
        Next

        con.Close()

        edit3.HRef += Request.QueryString("q").ToString
    End Sub

End Class