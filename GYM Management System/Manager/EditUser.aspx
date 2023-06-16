<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Manager/Manager.Master" CodeBehind="EditUser.aspx.vb" Inherits="GYM_Management_System.EditUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="EditUserForm" runat="server">
    <div class="container bg-white my-4 rounded-3 shadow">
        <div  class="row g-2">
          <div class="col-md-6">
            <label for="uid" class="form-label">User ID</label>
            <asp:TextBox ID="uid" class="form-control" runat="server" required ReadOnly></asp:TextBox>
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
          <div class="col-12 pt-2 pb-4 d-flex justify-content-between">
              <asp:Button ID="btnSaveUser" runat="server" Text="Save Details" class="btn btn-primary"/>
              <input type="button" data-bs-toggle="modal" data-bs-target="#deletemodal" class="btn btn-danger" value="Delete User"/>
          </div>
        </div>
    </div>
    <div runat="server" id="msgdiv" visible="false">
        <asp:Label ID="lblmsg" runat="server" Text="Hello Peter" CssClass="text-light"></asp:Label>
    </div>

    <div class="modal fade" role="dialog" tabindex="-1" id="deletemodal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header" style="background: var(--bs-danger);">
                    <h4 class="modal-title" style="color: var(--bs-light);">Alert</h4><button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <p>The user will be deleted permenantly. Do you want to continue?</p>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-light" type="button" data-bs-dismiss="modal">Cancel</button>
                    <asp:Button ID="btnDeleteUser" runat="server" Text="Delete" class="btn btn-danger"/>
                </div>
            </div>
        </div>
    </div>
    </form>
</asp:Content>
