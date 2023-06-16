<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Reception/Reception.Master" CodeBehind="MemberDetails.aspx.vb" Inherits="GYM_Management_System.MemberDetails" %>
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
                <a href="EditMember.aspx?q=" runat="server" id="edit1" class="btn btn-link">Edit</a>
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
            <span class="fs-3 d-flex justify-content-between">Additional Details
                <a href="EditMemberInfo.aspx?q=" runat="server" id="edit2" class="btn btn-link">Edit</a>
            </span>
        <br />
        <table class="table">
            <tbody>
                <tr>
                    <th class="w-25">Father's Name</th>
                    <td class="w-25"><asp:Label ID="father" runat="server" Text=""></asp:Label></td>
                    <th class="w-25">Mother's Name</th>
                    <td class="w-25"><asp:Label ID="mother" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <th>Residential Address</th>
                    <td colspan="3"><asp:Label ID="address" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <th>Emergency Contact Person</th>
                    <td><asp:Label ID="emer_name" runat="server" Text=""></asp:Label></td>
                    <th>Relation</th>
                    <td><asp:Label ID="emer_rel" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <th>Contact No</th>
                    <td colspan="3"><asp:Label ID="emer_no" runat="server" Text=""></asp:Label></td>
                </tr>
                
            </tbody>
        </table>
    </div>

    <div class="container bg-white my-4 rounded-3 shadow py-4">
        <span class="fs-3 d-flex justify-content-between">Membership Details</span>
        <br />
            <asp:Table ID="memhistory" runat="server" Class="table table-hover">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>Date</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Payment ID</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Plan</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Valid from</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Valid till</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Payment Mode</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Collected by</asp:TableHeaderCell>
                    <asp:TableHeaderCell></asp:TableHeaderCell>
                </asp:TableHeaderRow>
            </asp:Table>
    </div>
    </form>
</asp:Content>
