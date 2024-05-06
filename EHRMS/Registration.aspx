<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="EHRMS.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>REGISTER</title>
    <link rel="stylesheet" type="text/css" href="LogAssets/css/style.css" />
    <script src="https://kit.fontawesome.com/a81368914c.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Assets/bootstrap-4.0.0-dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        btnn {
            border: none;
        }
    </style>
    <%-- for disabeling future date --%>
    <script type="text/javascript">
        $(function () {
            var date = new Date();
            var currentMonth = date.getMonth();
            var currentDate = date.getDate();
            var currentYear = date.getFullYear();
            $('#txtDob').datepicker({
                maxDate: new Date(currentYear, currentMonth, currentDate)
            });
        });
    </script>
</head>
<body>
    <img class="wave" src="LogAssets/img/wave.png" />
    <div class="container">
        <div class="img">
            <img src="LogAssets/img/bg.svg" />
        </div>
        <div class="login-content">
            <form runat="server">
                <img src="DAssets/img/LogoNewBetter.png" />
                <h2 class="title">Register</h2>
                <div class="form-group">
                    <div class="row">
                        <div class="col-md-12">
                            Picture:<asp:FileUpload ID="FileUpload1" runat="server" Class="form-control" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            First Name:<asp:TextBox ID="txtFName" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            Last Name:<asp:TextBox ID="txtLName" runat="server" Class="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            DOB:<asp:TextBox ID="txtDob" runat="server" class="form-control" TextMode="Date"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            Gender:<asp:DropDownList ID="ddlGen" runat="server" class="form-control">
                                <asp:ListItem>Female</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Others</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            Blood Group:<asp:DropDownList ID="ddlBl" runat="server" class="dropdown form-control">
                                <asp:ListItem>O+</asp:ListItem>
                                <asp:ListItem>O-</asp:ListItem>
                                <asp:ListItem>A+</asp:ListItem>
                                <asp:ListItem>A-</asp:ListItem>
                                <asp:ListItem>B+</asp:ListItem>
                                <asp:ListItem>B-</asp:ListItem>
                                <asp:ListItem>AB+</asp:ListItem>
                                <asp:ListItem>AB-</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-6">
                            Adhaar No.:<asp:TextBox ID="txtAdhaarno" runat="server" class="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            E-mail:<asp:TextBox ID="txtMail" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            Mobile No.:<asp:TextBox ID="txtMob" runat="server" class="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            Address:<asp:TextBox ID="txtAdd" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            Password:<asp:TextBox ID="txtPass" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <a href="Login.aspx" style="float: left">Already have an account?</a>
                            <asp:Button ID="btnPatientRegister" runat="server" Text="Register" class="btn btn-success" OnClick="btnPatientRegister_Click" />
                        </div>
                    </div>
                </div>
                <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
            </form>
        </div>
    </div>
    <script type="text/javascript" src="LogAssets/js/main.js"></script>
</body>
</html>
