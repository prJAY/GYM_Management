<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Reception/Reception.Master" CodeBehind="NewMember.aspx.vb" Inherits="GYM_Management_System.NewMember" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div runat="server" id="msgdiv" visible="false">
        <asp:Label ID="lblmsg" runat="server" Text="Hello Peter" CssClass="text-light"></asp:Label>
    </div>

    <div class="container bg-white my-4 rounded-3 shadow py-4">
        <h2><b>New Member Signup</b></h2>
        <hr />
        <form id="NewMemberForm" runat="server" class="row g-3">
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
            <asp:TextBox ID="bdate" class="form-control" runat="server" required Type="date"></asp:TextBox>
          </div>
          <div class="col-md-4">
            <label for="jdate" class="form-label">Joining Date</label>
            <asp:TextBox ID="jdate" class="form-control" runat="server" required Type="date"></asp:TextBox>
          </div>
          
        <h3 class="mt-5">Additional Details</h3>

          <div class="col-md-6">
            <label for="father" class="form-label">Father's Name</label>
              <asp:TextBox ID="father" class="form-control" runat="server" required></asp:TextBox>
          </div>
          <div class="col-md-6">
            <label for="mother" class="form-label">Mother's Name</label>
              <asp:TextBox ID="mother" class="form-control" runat="server" required></asp:TextBox>
          </div>
          <div class="col-md-12">
            <label for="address" class="form-label">Residential Address</label>
              <asp:TextBox ID="address" class="form-control" runat="server" required TextMode="MultiLine"></asp:TextBox>
          </div>
          <div class="col-md-4">
            <label for="emer_name" class="form-label">Emergency Contact Person</label>
              <asp:TextBox ID="emer_name" class="form-control" runat="server" required></asp:TextBox>
          </div>
          <div class="col-md-4">
            <label for="emer_rel" class="form-label">Relation</label>
              <asp:TextBox ID="emer_rel" class="form-control" runat="server" required></asp:TextBox>
          </div>
          <div class="col-md-4">
            <label for="emer_no" class="form-label">Contact No</label>
              <asp:TextBox ID="emer_no" class="form-control" runat="server" required type="number"></asp:TextBox>
          </div>

          <div class="col-12 pt-2">
              <asp:Button ID="btnAddUser" runat="server" Text="Add Member" class="btn btn-primary"/>
              <input type="reset" value="Clear" class="btn btn-light" />
          </div>

        </form>

    </div>
    
</asp:Content>
