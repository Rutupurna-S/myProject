<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EHRMS.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>
   <link rel="stylesheet" type="text/css" href="LogAssets/css/style.css"/>
	<link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet"/>
	<script src="https://kit.fontawesome.com/a81368914c.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Assets/bootstrap-4.0.0-dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        .login-content img {
            height: 155px;
        }
    </style>
</head>
<body>
    <img class="wave" src="LogAssets/img/wave.png"/>
    <div class="container">
        <div class="img">
            <img src="LogAssets/img/bg.svg"/>
        </div>
        <div class="login-content">
            <form runat="server">
                <img src="DAssets/img/LogoNewBetter.png" />
                <h2 class="title">Welcome</h2>
                <!--UserType-->
               User Type :
                <asp:DropDownList ID="ddlUserType"  runat="server" class="form-control">
                    <asp:ListItem Value="0">User Type</asp:ListItem>
                    <asp:ListItem Value="1">Patient</asp:ListItem>
                    <asp:ListItem Value="2">Doctor</asp:ListItem>
                    <asp:ListItem Value="3">Receptionist</asp:ListItem>
                    <asp:ListItem Value="4">Admin</asp:ListItem>
                </asp:DropDownList>
                <!--username-->
                <div class="input-div one">
                    <div class="i">
                        <i class="fas fa-user"></i>
                    </div>
                    <div class="div">
                        <asp:TextBox ID="txtUser" runat="server" placeholder="UserID"></asp:TextBox>
                    </div>
                </div>
                <!--password-->
                <div class="input-div pass">
                    <div class="i">
                        <i class="fas fa-lock"></i>
                    </div>
                    <div class="div">
                        <asp:TextBox ID="TxtPass" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                    </div>
                </div>
                <a href="Registration.aspx" style="float: left">Don't have an account?</a>
                <a href="ForgotPassword.aspx">Forgot Password?</a>
                <asp:Button ID="btnLogin" CssClass="btn btn-success  gradient-custom-2 mb-3" runat="server" Text="Login" OnClick="btnLogin_Click" />
<%--                <asp:Button ID="btnCancel" CssClass="btn btn-warning  gradient-custom-2 mb-3" runat="server" Text="Cancel" OnClick="btnCancel_Click" />--%>
                <asp:Label ID="lblMsg" runat="server" ForeColor="Red" Font-Bold="true" Text=""></asp:Label>
        </form>
     </div>
    </div>
    <script type="text/javascript" src="LogAssets/js/main.js"></script>
</body>
</html>

