Imports System.Data
Imports System.Data.SqlClient

Public Class NewPayment
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(connectionstr.constr())
    Dim cmd As SqlCommand
    Dim dr As SqlDataReader
    Dim str As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            If con.State = Data.ConnectionState.Closed Then
                con.Open()
            End If
            str = "select m_id,m_fname,m_lname from member_master;"
            cmd = New SqlCommand(str, con)
            dr = cmd.ExecuteReader
            While dr.Read()
                mid.Items.Add(New ListItem(dr(1) + " " + dr(2), dr(0).ToString))
            End While
            dr.Close()

            str = "select * from membership_plans;"
            cmd = New SqlCommand(str, con)
            dr = cmd.ExecuteReader
            While dr.Read()
                pid.Items.Add(New ListItem(dr(0).ToString, dr(0).ToString + "+" + dr(3).ToString))
            End While
            dr.Close()

            str = "select * from user_master where user_type='T';"
            cmd = New SqlCommand(str, con)
            dr = cmd.ExecuteReader
            While dr.Read()
                trainer.Items.Add(New ListItem(dr(1) + " " + dr(2), dr(0).ToString))
            End While
            dr.Close()
            con.Close()

            vfrom.Text = DateTime.Now.ToString("yyyy-MM-dd")
            Dim tilldate As Date = DateTime.Now.AddMonths(1)
            vto.Text = tilldate.ToString("yyyy-MM-dd")
        End If
    End Sub

    Protected Sub pid_SelectedIndexChanged(sender As Object, e As EventArgs) Handles pid.SelectedIndexChanged
        Dim str1() As String = pid.SelectedItem.ToString.Split("M")
        Dim str2() As String = pid.SelectedValue.ToString.Split("+")
        dura.Text = str1(0) + " Month"
        amt.Text = str2(1)
        famt.Text = str2(1)
        vfrom.ReadOnly = False
    End Sub

    Protected Sub vfrom_TextChanged(sender As Object, e As EventArgs) Handles vfrom.TextChanged
        Dim parts(), dur() As String
        parts = vfrom.Text.Split("-")
        dur = pid.SelectedItem.ToString.Split("M")

        Dim fromdate As New DateTime(parts(0), parts(1), parts(2))
        Dim inc As Integer = dur(0)
        Dim tilldate As Date = fromdate.AddMonths(inc)
        vto.Text = tilldate.ToString("yyyy-MM-dd")

    End Sub

    Protected Sub btnAddPayment_Click(sender As Object, e As EventArgs) Handles btnAddPayment.Click
        processdiv.Visible = True
        inputdiv.Visible = False

        memid.Text = mid.SelectedValue
        mname.Text = mid.SelectedItem.Text
        payid.Text = pid.SelectedItem.Text
        duration.Text = dura.Text
        amount.Text = amt.Text
        famount.Text = famt.Text
        validfrom.Text = vfrom.Text
        validtill.Text = vto.Text


        paymode.Text = pmode.SelectedValue
        txn.Text = txnno.Text
        ptrainer.Text = trainer.SelectedItem.Text
        colby.Text = Session("UFname").ToString + " " + Session("ULname").ToString
    End Sub

    Protected Sub btnpayfinal_Click(sender As Object, e As EventArgs) Handles btnpayfinal.Click
        If con.State = Data.ConnectionState.Closed Then
            con.Open()
        End If
        Dim n As Integer

        Try
            str = "insert into payment_master (m_id,plan_id,valid_from,valid_till,pay_mode,pay_txn_id,trainer_id,col_by,col_on,net_amt,tot_amt)
                                        values(@m_id,@plan_id,@valid_from,@valid_till,@pay_mode,@pay_txn_id,@trainer_id,@col_by,@col_on,@net,@final);"
            cmd = New SqlCommand(str, con)
            cmd.Parameters.AddWithValue("@m_id", mid.SelectedValue)
            cmd.Parameters.AddWithValue("@plan_id", pid.SelectedItem.Text)
            cmd.Parameters.AddWithValue("@valid_from", vfrom.Text)
            cmd.Parameters.AddWithValue("@valid_till", vto.Text)
            cmd.Parameters.AddWithValue("@pay_mode", pmode.SelectedValue)
            cmd.Parameters.AddWithValue("@pay_txn_id", txnno.Text)
            cmd.Parameters.AddWithValue("@trainer_id", trainer.SelectedValue)
            cmd.Parameters.AddWithValue("@col_by", Session("UID").ToString)
            cmd.Parameters.AddWithValue("@col_on", DateTime.Now)
            cmd.Parameters.AddWithValue("@net", amt.Text)
            cmd.Parameters.AddWithValue("@final", famt.Text)
            n = cmd.ExecuteNonQuery
        Catch ex As Exception
            lblmsg.Text = "Payment not processed"
            msgdiv.Attributes.Add("class", "bg-danger container my-4 rounded-3 shadow")
        End Try
        If n = 1 Then

            lblmsg.Text = "Payment processed successfully"
            msgdiv.Attributes.Add("class", "bg-success container my-4 rounded-3 shadow")

            Dim redir As New HtmlMeta()
            redir.Attributes.Add("http-equiv", "REFRESH")
            redir.Attributes.Add("content", "5; url='/Reception/Payments.aspx'")
            Page.Header.Controls.Add(redir)
        End If
        msgdiv.Visible = True
        con.Close()
    End Sub

    Protected Sub btncanceltxn_Click(sender As Object, e As EventArgs) Handles btncanceltxn.Click
        Response.Redirect("/Reception/NewPayment.aspx")
    End Sub
End Class