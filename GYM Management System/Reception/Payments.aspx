<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Reception/Reception.Master" CodeBehind="Payments.aspx.vb" Inherits="GYM_Management_System.Payments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container bg-white my-4 rounded-3 py-3 shadow">
        <form id="Form1" runat="server">
            <asp:Table ID="paymenttable" runat="server" Class="table table-hover">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>Payment ID</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Member</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Plan</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Payment Mode</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Collected By</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Collected On</asp:TableHeaderCell>
                    <asp:TableHeaderCell></asp:TableHeaderCell>
                </asp:TableHeaderRow>
            </asp:Table>
        </form>
    </div>
</asp:Content>
