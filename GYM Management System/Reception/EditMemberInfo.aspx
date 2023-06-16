<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Reception/Reception.Master" CodeBehind="EditMemberInfo.aspx.vb" Inherits="GYM_Management_System.EditMemberInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div runat="server" id="msgdiv" visible="false">
        <asp:Label ID="lblmsg" runat="server" Text="Hello Peter" CssClass="text-light"></asp:Label>
    </div>

    <div class="container bg-white my-4 rounded-3 shadow py-4">
        <h2><b>Edit Member Info</b></h2>
        <hr />
        <form id="EditMemberForm" runat="server" class="row g-3">
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
              <asp:Button ID="btnSaveUser" runat="server" Text="Save Changes" class="btn btn-primary"/>
              <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn btn-light"/>
          </div>

        </form>
    </div>
</asp:Content>
