<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Manager/Manager.Master" CodeBehind="Users.aspx.vb" Inherits="GYM_Management_System.Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container bg-white my-4 rounded-3 py-3 shadow">
        <form runat="server">
            <asp:Table ID="usertable" runat="server" Class="table table-hover">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>User ID</asp:TableHeaderCell>
                    <asp:TableHeaderCell>User Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell>User Type</asp:TableHeaderCell>
                    <asp:TableHeaderCell></asp:TableHeaderCell>
                </asp:TableHeaderRow>
            </asp:Table>
        </form>
    </div>
</asp:Content>
