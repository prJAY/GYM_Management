<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Manager/Manager.Master" CodeBehind="NewUser.aspx.vb" Inherits="GYM_Management_System.NewUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container bg-white my-4 rounded-3 shadow">

        <form id="NewUserForm" runat="server" class="row g-2">
          <div class="col-md-6">
            <label for="uid" class="form-label">User ID</label>
            <asp:TextBox ID="uid" class="form-control" runat="server" required></asp:TextBox>
          </div>
          <div class="col-md-6">
            <label for="upass" class="form-label">Password</label>
              <asp:TextBox ID="upass" class="form-control" runat="server" required></asp:TextBox>
          </div>
          <div class="col-md-6">
            <label for="fname" class="form-label">First Name</label>
              <asp:TextBox ID="fname" class="form-control" runat="server" required></asp:TextBox>
          </div>
          <div class="col-md-6">
            <label for="lname" class="form-label">Last Name</label>
              <asp:TextBox ID="lname" class="form-control" runat="server" required></asp:TextBox>
          </div>
          <div class="col-md-4">
            <label for="inputState" class="form-label">Select User Type</label>
              <asp:DropDownList ID="utype" runat="server" class="form-select">
                  <asp:ListItem>Select type</asp:ListItem>
                  <asp:ListItem Value="M">Manager</asp:ListItem>
                  <asp:ListItem Value="R">Receptionist</asp:ListItem>
                  <asp:ListItem Value="T">Trainer</asp:ListItem>
              </asp:DropDownList>
          </div>
          <div class="col-12 pt-2 pb-4">
              <asp:Button ID="btnAddUser" runat="server" Text="Add User" class="btn btn-primary"/>
              <input type="reset" value="Clear" class="btn btn-light" />
          </div>
        </form>

    </div>
    <div runat="server" id="msgdiv" visible="false">
        <asp:Label ID="lblmsg" runat="server" Text="Hello Peter" CssClass="text-light"></asp:Label>
    </div>

</asp:Content>
