<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Manager/Manager.Master" CodeBehind="Plans.aspx.vb" Inherits="GYM_Management_System.Plans" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container bg-white my-4 rounded-3 py-3 shadow">
        <form id="Form1" runat="server">
            <asp:Table ID="usertable" runat="server" Class="table table-hover">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>Plan ID</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Plan Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Validity ( Months )</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Amount</asp:TableHeaderCell>
                    <asp:TableHeaderCell></asp:TableHeaderCell>
                </asp:TableHeaderRow>
            </asp:Table>
        </form>
    </div>
</asp:Content>
