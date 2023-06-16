<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Reception/Reception.Master" CodeBehind="NewPayment.aspx.vb" Inherits="GYM_Management_System.NewPayment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div runat="server" id="msgdiv" visible="false">
        <asp:Label ID="lblmsg" runat="server" Text="Hello" CssClass="text-light"></asp:Label>
    </div>

    <div class="container bg-white my-4 rounded-3 shadow py-4" runat="server" id="inputdiv" visible="true">
        <h2><b>New Payment</b></h2>
        <hr />
        <form id="NewPaymentForm" runat="server" class="row g-3">
          <div class="col-md-6">
            <label for="mid" class="form-label">Member Name</label>
              <asp:DropDownList ID="mid" runat="server" CssClass="form-select">
                  <asp:ListItem>Select Member</asp:ListItem>
              </asp:DropDownList>
          </div>
          <div class="col-md-6">
          </div>
          <div class="col-md-6">
            <label for="pid" class="form-label">Select Membership Plan</label>
              <asp:DropDownList ID="pid" runat="server" CssClass="form-select" AutoPostBack="True">
                  <asp:ListItem>Select Plan</asp:ListItem>
              </asp:DropDownList>
          </div>
          
          <div class="col-md-3">
            <label for="amt" class="form-label">Base Amount</label>
              <asp:TextBox ID="amt" class="form-control" runat="server" ReadOnly="True"></asp:TextBox>
          </div>
          <div class="col-md-3">
            <label for="amt" class="form-label">Final Amount</label>
              <asp:TextBox ID="famt" class="form-control" runat="server" TextMode="Number"></asp:TextBox>
          </div>
          
          <div class="col-md-6">
            <label for="vfrom" class="form-label">Valid from</label>
              <asp:TextBox ID="vfrom" class="form-control" runat="server" required type="date" AutoPostBack="True" ReadOnly="True"></asp:TextBox>
          </div>
          <div class="col-md-3">
            <label for="vto" class="form-label">Valid till</label>
            <asp:TextBox ID="vto" class="form-control" runat="server" ReadOnly="True" type="date"></asp:TextBox>
          </div>
          <div class="col-md-3">
            <label for="dura" class="form-label">Duration</label>
              <asp:TextBox ID="dura" class="form-control" runat="server" ReadOnly="True"></asp:TextBox>
          </div>
          
          <div class="col-md-6">
            <label for="pmode" class="form-label">Payment Mode</label>
              <asp:DropDownList ID="pmode" runat="server" CssClass="form-select">
                  <asp:ListItem Value="Cash">Cash</asp:ListItem>
                  <asp:ListItem Value="UPI">UPI</asp:ListItem>
                  <asp:ListItem Value="Card">Debit / Credit Card</asp:ListItem>
              </asp:DropDownList>
          </div>
          <div class="col-md-6">
            <label for="txnno" class="form-label">Transaction No (if any)</label>
              <asp:TextBox ID="txnno" class="form-control" runat="server"></asp:TextBox>
          </div>
          <div class="col-md-6">
            <label for="trainer" class="form-label">Preffered Trainer</label>
              <asp:DropDownList ID="trainer" runat="server" CssClass="form-select">
                  <asp:ListItem Value="comm">Select Trainer</asp:ListItem>
              </asp:DropDownList>
          </div>
          <div class="col-md-6">
          </div>
          
          <div class="col-12 pt-2">
              <asp:Button ID="btnAddPayment" runat="server" Text="Process Payment" class="btn btn-success"/>
              <input type="reset" value="Clear" class="btn btn-light" />
          </div>
        </form>
    </div>

    <div class="container bg-white my-4 rounded-3 shadow py-4" runat="server" id="processdiv" visible="false">
        <form runat="server">
        <h1>Processing payment . . .</h1>
        <br />
        <div class="progress">
          <div class="progress-bar bg-success progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%"></div>
        </div>
        <br />
        <br />
        <span>
            Please confirm below details and collect the payment
        </span>
        <br />
        <br />
        <table class="table">
            <tbody>
                <tr>
                    <th class="w-25">Member ID</th>
                    <td class="w-25"><asp:Label ID="memid" runat="server" Text=""></asp:Label></td>
                    <th class="w-25">Member Name</th>
                    <td class="w-25"><asp:Label ID="mname" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <th class="w-25">Selected Plan</th>
                    <td class="w-25"><asp:Label ID="payid" runat="server" Text=""></asp:Label></td>
                    <th class="w-25">Duration</th>
                    <td class="w-25"><asp:Label ID="duration" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <th>Base Amount</th>
                    <td><asp:Label ID="amount" runat="server" Text=""></asp:Label></td>
                    <th>Final Amount</th>
                    <td><asp:Label ID="famount" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <th class="w-25">Valid from</th>
                    <td class="w-25"><asp:Label ID="validfrom" runat="server" Text=""></asp:Label></td>
                    <th class="w-25">Valid till</th>
                    <td class="w-25"><asp:Label ID="validtill" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <th>Payment Mode</th>
                    <td><asp:Label ID="paymode" runat="server" Text=""></asp:Label></td>
                    <th>Transaction No</th>
                    <td><asp:Label ID="txn" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <th>Preffered Trainer</th>
                    <td><asp:Label ID="ptrainer" runat="server" Text=""></asp:Label></td>
                    <th>Collected by</th>
                    <td><asp:Label ID="colby" runat="server" Text=""></asp:Label></td>
                </tr>
            </tbody>
        </table>
        <br />
        <asp:Button ID="btnpayfinal" runat="server" Text="Complete Transaction" class="btn btn-success"/>
        <asp:Button ID="btncanceltxn" runat="server" Text="Cancel" class="btn"/>
    </form>
    </div>
</asp:Content>
