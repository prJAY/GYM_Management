<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Manager/Manager.Master" CodeBehind="Home.aspx.vb" Inherits="GYM_Management_System.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container bg-white my-4 rounded-3 py-2">
        <asp:Label ID="greetlbl" class="fs-1 " runat="server" Text=""></asp:Label>
    </div>
    <br />
    <div class="container bg-white my-4 rounded-3 py-3">
        <a class=" text-decoration-none text-dark fs-3" href="Users.aspx">User Management</a>
    </div>
    <div class="container bg-white my-4 rounded-3 py-3">
        <a class=" text-decoration-none text-dark fs-3" href="Plans.aspx">Membership Plans</a>
    </div>
</asp:Content>
