<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Manager/Manager.Master" CodeBehind="EditPlan.aspx.vb" Inherits="GYM_Management_System.EditPlan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form id="EditPlanForm" runat="server">
    <div class="container bg-white my-4 rounded-3 shadow">
        <div class="row g-2">
          <div class="col-md-6">
            <label for="pid" class="form-label">Plan ID</label>
            <asp:TextBox ID="pid" class="form-control" runat="server" required ReadOnly="True"></asp:TextBox>
          </div>
          <div class="col-md-6">
            <label for="pname" class="form-label">Plan Name</label>
              <asp:TextBox ID="pname" class="form-control" runat="server" required ReadOnly="True"></asp:TextBox>
          </div>
          <div class="col-md-6">
            <label for="val" class="form-label">Validity ( Months )</label>
              <asp:TextBox ID="val" class="form-control" runat="server" required TextMode="Number" ReadOnly="True"></asp:TextBox>
          </div>
          <div class="col-md-6">
            <label for="amt" class="form-label">Amount</label>
              <asp:TextBox ID="amt" class="form-control" runat="server" required TextMode="Number"></asp:TextBox>
          </div>
          <div class="col-12 pt-2 pb-4 d-flex justify-content-between">
              <asp:Button ID="btnAddPlan" runat="server" Text="Save" class="btn btn-primary"/>
              <input type="button" data-bs-toggle="modal" data-bs-target="#deletemodal" class="btn btn-danger" value="Delete Plan"/>
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
                    <p>The plan will be deleted permenantly. Do you want to continue?</p>
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
