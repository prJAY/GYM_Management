<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Trainer/Trainer.Master" CodeBehind="MemberBMI.aspx.vb" Inherits="GYM_Management_System.MemberBMI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
    <div class="container bg-white my-4 rounded-3 shadow py-4">
        <h1 class="d-flex justify-content-between">
            <asp:Label ID="name" runat="server" Text="Member"></asp:Label>
        </h1>
    </div>
    <div class="container bg-white my-4 rounded-3 shadow py-4">
            <span class="fs-3 d-flex justify-content-between">Personal Details
                
            </span>
        <br />
        <table class="table">
            <tbody>
                <tr>
                    <th>Gender</th>
                    <td colspan="3"><asp:Label ID="gen" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <th class="w-25">Date of Birth</th>
                    <td class="w-25"><asp:Label ID="bdate" runat="server" Text=""></asp:Label></td>
                    <th class="w-25">Joining Date</th>
                    <td class="w-25"><asp:Label ID="jdate" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <th>Email Address</th>
                    <td><asp:Label ID="email" runat="server" Text=""></asp:Label></td>
                    <th>Contact Number</th>
                    <td><asp:Label ID="cno" runat="server" Text=""></asp:Label></td>
                </tr>
            </tbody>
        </table>
    </div>

    <div class="container bg-white my-4 rounded-3 shadow py-4">
        <div class="d-flex justify-content-between">
            <span class="fs-3 d-flex justify-content-between">BMI Reports</span>
            <a href="AddBMI.aspx?q=" runat="server" id="edit3" class="btn btn-link">Add New</a>
        </div>

        <br />
            <asp:Table ID="bmitable" runat="server" Class="table table-hover">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>Date</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Weight(kg)</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Fat(%)</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Body Age</asp:TableHeaderCell>
                    <asp:TableHeaderCell>BMI</asp:TableHeaderCell>
                    <asp:TableHeaderCell>K Cal</asp:TableHeaderCell>
                    <asp:TableHeaderCell>V Fat(%)</asp:TableHeaderCell>
                    <asp:TableHeaderCell>S Fat(%)</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Muscal(%)</asp:TableHeaderCell>
                </asp:TableHeaderRow>
            </asp:Table>
    </div>
    </form>
</asp:Content>
