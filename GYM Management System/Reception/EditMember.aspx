<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Reception/Reception.Master" CodeBehind="EditMember.aspx.vb" Inherits="GYM_Management_System.EditMember" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div runat="server" id="msgdiv" visible="false">
        <asp:Label ID="lblmsg" runat="server" Text="Hello Peter" CssClass="text-light"></asp:Label>
    </div>

    <div class="container bg-white my-4 rounded-3 shadow py-4">
        <h2><b>Edit Member Details</b></h2>
        <hr />
        <form id="EditMemberForm" runat="server" class="row g-3">
          <div class="col-md-6">
            <label for="fname" class="form-label">First Name</label>
              <asp:TextBox ID="fname" class="form-control" runat="server" required></asp:TextBox>
          </div>
          <div class="col-md-6">
            <label for="lname" class="form-label">Last Name</label>
              <asp:TextBox ID="lname" class="form-control" runat="server" required></asp:TextBox>
          </div>
          <div class="col-md-6">
            <label for="email" class="form-label">Email Adderss</label>
              <asp:TextBox ID="email" class="form-control" runat="server" required type="email"></asp:TextBox>
          </div>
          <div class="col-md-6">
            <label for="cno" class="form-label">Contact No</label>
              <asp:TextBox ID="cno" class="form-control" runat="server" required type="number"></asp:TextBox>
          </div>
          <div class="col-md-4">
            <label for="rdogender" class="form-label">Select Gender</label>
              <asp:DropDownList ID="rdogender" runat="server" class="form-select">
                <asp:ListItem Value="M">Male</asp:ListItem>
                <asp:ListItem Value="F">Female</asp:ListItem>
              </asp:DropDownList>
          </div>
          <div class="col-md-4">
            <label for="bdate" class="form-label">Birth Date</label>
            <asp:TextBox ID="bdate" class="form-control" runat="server" required></asp:TextBox>
          </div>
          <div class="col-md-4">
            <label for="jdate" class="form-label">Joining Date</label>
            <asp:TextBox ID="jdate" class="form-control" runat="server" required></asp:TextBox>
          </div>
          
          <div class="col-12 pt-2">
              <asp:Button ID="btnSaveUser" runat="server" Text="Save Changes" class="btn btn-primary"/>
              <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn btn-light"/>
          </div>

        </form>
    </div>
</asp:Content>
