<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Client/client.Master" CodeBehind="Receipt.aspx.vb" Inherits="GYM_Management_System.Receipt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body{
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container h-300 p-5">
        <h1>Get your payment receipt</h1>
        <br />
        <form class="row" runat="server">
            <div class="row mb-3">
                <label for="mid" class="col-sm-2 col-form-label">Member ID</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="mid" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row mb-3">
                <label class="col-sm-2 col-form-label"></label>
                <div class="col-sm-10">
                    <asp:Button ID="Button1" class="btn btn-dark" runat="server" Text="Submit" />
                </div>
            </div>
            <asp:Label ID="msg" runat="server" CssClass="text-danger" Text=""></asp:Label>
           
            <div>
                <asp:Table ID="membertable" runat="server" Class="table table-hover" Visible="False">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>Date</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Plan</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Amount</asp:TableHeaderCell>
                    <asp:TableHeaderCell></asp:TableHeaderCell>
                </asp:TableHeaderRow>
                </asp:Table>
            </div>
        </form>
    </div>
</asp:Content>
