<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="EHRMS.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>
    <link rel="stylesheet" type="text/css" href="LogAssets/css/style.css" />
    <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/a81368914c.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Assets/bootstrap-4.0.0-dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        .login-content img {
            height: 155px;
        }
    </style>
</head>
<body>
    <img class="wave" src="LogAssets/img/wave.png" />
    <div class="container">
        <div class="img">
            <img src="LogAssets/img/bg.svg" />
        </div>
        <div class="login-content">
            <form runat="server">
                <img src="LogAssets/img/cehms-logo1.png" />
                <h5>Forgot Password?<i class="fa-regular fa-face-thinking"></i></h5>
                <!--UserType-->
                User Type :
                    <asp:DropDownList ID="ddlUserType" runat="server" class="form-control">
                        <asp:ListItem Value="0">User Type</asp:ListItem>
                        <asp:ListItem Value="1">Patient</asp:ListItem>
                        <asp:ListItem Value="2">Doctor</asp:ListItem>
                        <asp:ListItem Value="3">Receptionist</asp:ListItem>
                        <asp:ListItem Value="4">Admin</asp:ListItem>
                    </asp:DropDownList>
                 <asp:TextBox ID="txtEmail" runat="server" placeholder="Email ID" class="form-control"></asp:TextBox>
                <asp:TextBox ID="txtOTP" runat="server" placeholder="Enter OTP " visible="false" class="form-control"></asp:TextBox>
                <asp:Label ID="lblMsg" runat="server" ForeColor="Red" Font-Bold="true" Text=""></asp:Label>
                <asp:HiddenField ID="hdnOTP" runat="server" />
                <asp:Button ID="btnSubmit" runat="server" Text="Send OTP" class="btn btn-success" OnClick="btnSubmit_Click" />
                <asp:Button ID="btnValidateOTP" runat="server" Text="Validate OTP" class="btn btn-success" Visible="false" OnClick="btnValidateOTP_Click" />
                <asp:Button ID="btnLogin" runat="server" Text="Login" class="btn btn-success" OnClick="btnLogin_Click" />
             </form>
        </div>
    </div>
    <script type="text/javascript" src="LogAssets/js/main.js"></script>
</body>
</html>
