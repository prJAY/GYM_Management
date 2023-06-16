<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="GYM_Management_System.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>GYM Management | Log In</title>
    <link rel="Stylesheet" href="Styles/bootstrap.min.css" />
    <link rel="Stylesheet" href="Styles/site.css" />
</head>
<body class="bg-login-img align-content-center d-flex" style="height:100vh;">
    <div class="container bg-white rounded-2 shadow my-auto p-5 w-50">
        <h1 class="text-center"><a href="/" class="text-dark text-decoration-none Stylefont">Infinity Fitness</a></h1>
        <hr class=" my-5"/>
        <form id="loginform" runat="server" class="w-100">
          <div class="mb-3">
            <label for="userid" class="form-label">User ID</label>
            <asp:TextBox ID="userid" runat="server" class="form-control" required></asp:TextBox>
          </div>
          <div class="mb-3">
            <label for="userpass" class="form-label">Password</label>
            <asp:TextBox ID="userpass" runat="server" class="form-control" required TextMode="Password"></asp:TextBox>
          </div>
          <div class="mb-3">
              <asp:Button ID="loginbtn" runat="server" class="btn btn-primary" Text="Log In" />
          </div>
          <div class="mb-3">
              <asp:Label ID="loginmsg" runat="server" Text=""></asp:Label>
          </div>
          
        </form>
    </div>
</body>
</html>
