<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Trainer/Trainer.Master" CodeBehind="Members.aspx.vb" Inherits="GYM_Management_System.Members1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container bg-white my-4 rounded-3 py-3 shadow">
        <form id="Form1" runat="server">
            <asp:Table ID="membertable" runat="server" Class="table table-hover">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>Member ID</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Full Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Date of birth</asp:TableHeaderCell>
                    <asp:TableHeaderCell></asp:TableHeaderCell>
                </asp:TableHeaderRow>
            </asp:Table>
        </form>
    </div>
</asp:Content>
