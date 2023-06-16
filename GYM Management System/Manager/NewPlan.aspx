<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Manager/Manager.Master" CodeBehind="NewPlan.aspx.vb" Inherits="GYM_Management_System.NewPlan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container bg-white my-4 rounded-3 shadow">
        <form id="NewPlanForm" runat="server" class="row g-2">
          
          <div class="col-md-4">
            <label class="form-label">Select Plan Type</label>
            <asp:DropDownList ID="plantype" runat="server" CssClass="form-select">
                <asp:ListItem>Regular</asp:ListItem>
                <asp:ListItem>Student</asp:ListItem>
                <asp:ListItem>Personal</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
          </div>
          <div class="col-md-4">
            <label for="val" class="form-label">Validity ( Months )</label>
              <asp:TextBox ID="val" class="form-control" runat="server" required TextMode="Number"></asp:TextBox>
          </div>
          <div class="col-md-4">
            <label for="amt" class="form-label">Amount</label>
              <asp:TextBox ID="amt" class="form-control" runat="server" required TextMode="Number"></asp:TextBox>
          </div>
          <div class="col-12 pt-2 pb-4">
              <asp:Button ID="btnAddPlan" runat="server" Text="Add Plan" class="btn btn-primary"/>
              <input type="reset" value="Clear" class="btn btn-light" />
          </div>
        </form>
    </div>
    <div runat="server" id="msgdiv" visible="false">
        <asp:Label ID="lblmsg" runat="server" Text="" CssClass="text-light"></asp:Label>
    </div>
</asp:Content>
