<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Trainer/Trainer.Master" CodeBehind="AddBMI.aspx.vb" Inherits="GYM_Management_System.AddBMI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div runat="server" id="msgdiv" visible="false">
        <asp:Label ID="lblmsg" runat="server" Text="Hello Peter" CssClass="text-light"></asp:Label>
    </div>
    <div class="container bg-white my-4 rounded-3 p-4">
        <h2><b>New BMI Report</b></h2>
        <hr />
        <br />
        <br />

    <form runat="server" id="newbmi">
      <div class="row mb-3">
        <label class="col-sm-2 col-form-label">Weight</label>
        <div class="col-sm-10">
            <asp:TextBox ID="weight" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
      </div>
      <div class="row mb-3">
        <label class="col-sm-2 col-form-label">Fat</label>
        <div class="col-sm-10">
            <asp:TextBox ID="fat" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
      </div>
        <div class="row mb-3">
        <label class="col-sm-2 col-form-label">Body Age</label>
        <div class="col-sm-10">
            <asp:TextBox ID="bodyage" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
      </div>
        <div class="row mb-3">
        <label class="col-sm-2 col-form-label">BMI</label>
        <div class="col-sm-10">
            <asp:TextBox ID="bmi" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
      </div>
        <div class="row mb-3">
        <label class="col-sm-2 col-form-label">K Cal</label>
        <div class="col-sm-10">
            <asp:TextBox ID="kcal" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
      </div>
        <div class="row mb-3">
        <label class="col-sm-2 col-form-label">V Fat</label>
        <div class="col-sm-10">
            <asp:TextBox ID="vfat" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
      </div>
        <div class="row mb-3">
        <label class="col-sm-2 col-form-label">S Fat</label>
        <div class="col-sm-10">
            <asp:TextBox ID="sfat" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
      </div>
        <div class="row mb-3">
        <label class="col-sm-2 col-form-label">Muscal</label>
        <div class="col-sm-10">
            <asp:TextBox ID="muscal" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
      </div>
        <asp:Button ID="addbmi" runat="server" Text="Add Report" CssClass="btn btn-primary"/>
        <asp:Button ID="cancel" runat="server" Text="Cancel" CssClass="btn" />
    </form>
    </div>
</asp:Content>
