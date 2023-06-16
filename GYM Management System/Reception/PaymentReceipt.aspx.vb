Imports System.Data
Imports System.Data.SqlClient

Public Class PaymentReceipt
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(connectionstr.constr())
    Dim cmd As SqlCommand
    Dim dr As SqlDataReader
    Dim str As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If con.State = Data.ConnectionState.Closed Then
            con.Open()
        End If
        str = "select pay_id,m.m_id,p.plan_id,valid_from,valid_till,pay_mode,pay_txn_id,trainer_id,col_by,col_on,m_fname,m_lname,s.plan_validity,net_amt,tot_amt,u.user_fname,u.user_lname
from payment_master p,member_master m,membership_plans s,user_master u
where m.m_id = p.m_id and pay_id = @id and p.plan_id = s.plan_id and u.user_id=col_by"
        cmd = New SqlCommand(str, con)
        Dim paymenid As Integer = Request.QueryString("q").ToString
        cmd.Parameters.AddWithValue("@id", paymenid)

        dr = cmd.ExecuteReader
        If dr.HasRows Then
            dr.Read()

            pid.Text = dr(0).ToString
            memid.Text = dr(1).ToString
            mname.Text = dr(10).ToString + " " + dr(11).ToString
            payid.Text = dr(2).ToString
            duration.Text = dr(12).ToString + " Month(s)"
            amount.Text = dr(13).ToString
            famt.Text = dr(14).ToString
            validfrom.Text = dr(3).ToString
            validtill.Text = dr(4).ToString
            paymode.Text = dr(5).ToString
            txn.Text = dr(6).ToString
            ptrainer.Text = dr(7).ToString
            colby.Text = dr(15).ToString + " " + dr(16).ToString
            If (dr(9).ToString.Length > 10) Then
                col_date.Text = dr(9).ToString.Substring(0, 10)
            Else
                col_date.Text = dr(9).ToString
            End If
            dr.Close()

            Try
                str = "select user_fname + ' ' + user_lname from user_master where user_id='" + ptrainer.Text + "';"
                cmd = New SqlCommand(str, con)
                Dim ans As Object = cmd.ExecuteScalar
                If (ans IsNot Nothing) Then
                    ptrainer.Text = ans.ToString
                Else
                    ptrainer.Text = "Common"
                End If

            Catch ex As Exception
                Console.WriteLine("Comm Err")
            End Try


            con.Close()
        Else
            dr.Close()
            con.Close()
            Response.Redirect("Payments.aspx")
        End If
    End Sub

End Class