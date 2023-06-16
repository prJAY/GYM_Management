<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PaymentReceipt.aspx.vb" Inherits="GYM_Management_System.PaymentReceipt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Infinity Fitness | Payment Receipt</title>
    <link rel="Stylesheet" href="/Styles/bootstrap.min.css" />
    <link rel="Stylesheet" href="/Styles/site.css" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <style>
    body{
        height: 100vh;
    }
    tr
    {
        position:relative;
    }
    </style>
</head>
<body class="bg-light align-content-center">
    <div class="container bg-white rounded-3 shadow p-4 my-auto">
        <form runat="server">
            <div class="d-flex justify-content-between">
                <h1 class="Stylefont">Infinity Fitness</h1>
            <span>
                Payment ID #<asp:Label ID="pid" runat="server" Text=""></asp:Label>
                <br />
                Collected on: <asp:Label ID="col_date" runat="server" Text=""></asp:Label>
            </span>
            </div>
            
            <hr />
        <br />
        <br />
        <span>
            Please note that payments made towards membership are not refundable.
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
                    <td><asp:Label ID="famt" runat="server" Text=""></asp:Label></td>
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
        </form>
    </div>
</body>
</html>
