<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="EHRMS.UserProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="keywords" />
    <meta content="" name="description" />
    <%--<link href="Content/bootstrap.min.css" rel="stylesheet" />--%>
    <link href="Assets/bootstrap-4.0.0-dist/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Favicon -->
    <link href="DAssets/img/favicon.ico" rel="icon" />

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet" />

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />

    <!-- Libraries Stylesheet -->
    <link href="DAssets/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />
    <link href="DAssets/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="DAssets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Template Stylesheet -->
    <link href="DAssets/css/style.css" rel="stylesheet" />
    <style>
        .sidebar {
            width: 21.5%;
        }

        .col-sm-4 {
            flex: 0 0 auto;
            width: 33.33333%;
            margin-top: -404px;
            opacity: 0.9;
        }

            .col-sm-4 col-xl-4 {
                flex: 0 0 auto;
                width: 50%;
                margin-top: -502px;
            }

        .backimg {
            margin-top: 50px;
            padding-left: 190px;
            opacity: 0.8;
        }

        .py-4 {
            padding-top: 1.5rem !important;
            padding-bottom: 1.5rem !important;
            height: 110px;
        }

        input, button, select, optgroup, textarea {
            /* width: 40%;*/
            margin: 0;
            font-family: inherit;
            font-size: inherit;
            line-height: inherit;
        }

        .register {
            background: -webkit-linear-gradient(left, #3931af, #00c6ff);
            margin-top: 3%;
            padding: 3%;
        }

        .register-right {
            background: #f8f9fa;
            margin-top: 10px;
            width: 1000px;
        }

        .register .register-form {
            padding: 10%;
            margin-top: 10%;
        }

        .btnRegister {
            float: right;
            margin-top: 10%;
            border: none;
            border-radius: 1.5rem;
            padding: 2%;
            background: #0062cc;
            color: #fff;
            font-weight: 600;
            width: 50%;
            cursor: pointer;
        }

        .register .nav-tabs {
            margin-top: 3%;
            border: none;
            background: #0062cc;
            border-radius: 1.5rem;
            width: 28%;
            float: right;
        }

            .register .nav-tabs .nav-link {
                padding: 2%;
                height: 34px;
                font-weight: 600;
                color: #fff;
                border-top-right-radius: 1.5rem;
                border-bottom-right-radius: 1.5rem;
            }

                .register .nav-tabs .nav-link:hover {
                    border: none;
                }

                .register .nav-tabs .nav-link.active {
                    width: 100px;
                    color: #0062cc;
                    border: 2px solid #0062cc;
                    border-top-left-radius: 1.5rem;
                    border-bottom-left-radius: 1.5rem;
                }

        .register-heading {
            text-align: center;
            margin-top: 8%;
            margin-bottom: -15%;
            color: #495057;
        }
    </style>

</head>

<body>
    <div class="container-xxl position-relative bg-white ">
        <div class="row ">
            <div class="col-xl-6">
                <div class="sidebar">
                    <nav class="navbar">
                        <h5 class="text-success">WELCOME</h5>
                        <br />
                        <div class="d-flex align-items-center ms-5 mb-4">
                            <div class="position-relative">
                                <img class="rounded-circle" src="DAssets/img/LogoNewBetter.png" alt="logo" style="width: 150px; height: 150px; margin-right: 40px" />
                                <div class=" border-white position-absolute end-0 bottom-0 p-1"></div>
                            </div>
                        </div>
                        <div class="navbar-nav w-100">
                            <a href="Dashboard.aspx" class="nav-item nav-link ac tive"><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
                            <a href="Appointments.aspx" class="nav-item nav-link ac tive"><i class="fa fa-tachometer-alt me-2"></i>Book Appointment</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Manage Appointment</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="PatientAppHistory.aspx" class="dropdown-item">History</a>
                                    <a href="UpcomingAppPatient.aspx" class="dropdown-item">Upcoming</a>
                                </div>
                            </div>
                            <a href="PathoReport.aspx" class="nav-item nav-link"><i class="fa fa-keyboard me-2"></i>Pathology Report</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Bills & Payment</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="DoctorFee.aspx" class="dropdown-item">Doctors Fee</a>
                                    <a href="MedicineFee.aspx" class="dropdown-item">Medicine Fee</a>
                                    <a href="PatientPathoTest.aspx" class="dropdown-item">Pathology Tests Fee</a>
                                </div>
                            </div>
                            <a href="OrderMedicine.aspx" class="nav-item nav-link"><i class="fa fa-chart-bar me-2"></i>Order Medicine</a>
                            <a href="Feedback.aspx" class="nav-item nav-link"><i class="fa fa-th me-2"></i>Feedback</a>
                        </div>
                    </nav>
                </div>
            </div>
            <!-- Sidebar End -->
            <!-- Content Start -->
            <div class="content">
                <!-- Navbar Start -->
                <nav class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-4">
                    <h4 class="text-success" style="margin-top: 30px;">HealthId: 
                            <asp:Label ID="lblHealthId" runat="server" Text="" ForeColor="Green"></asp:Label>
                    </h4>
                    <div class="d-flex align-items-right align-items-end dropdown" style="">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <span class="d-none d-lg-inline-flex">
                                <asp:Image ID="UserPhoto" runat="server" Height="80px" Width="80px" Style="margin-left: 800px" class="rounded-circle me-lg-2" />
                            </span>
                            <span class="d-none d-lg-inline-flex">
                                <asp:Label ID="lblUserName" runat="server" Text="" ForeColor="Green"></asp:Label>
                            </span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                            <a href="#" class="dropdown-item">My Profile</a>
                            <a href="ChangePassword.aspx" class="dropdown-item">Change Password</a>
                            <a href="Login.aspx" class="dropdown-item">Log Out</a>
                        </div>
                    </div>
                </nav>
                <!-- Navbar end -->
                <div class="container">
                    <%-- <div class="backimg">
                        <img src="DAssets/img/LogoNewBetter.png" style="height: 500px" />
                    </div>--%>
                    <div class="login-content register-right">
                        <form runat="server">
                            <div class="row  register-form ">
                                <div class="col-md-6 form-group">
                                    <br />
                                    <br />
                                    First Name :
                                    <asp:TextBox ID="txtFName" runat="server" class="form-control" Enabled="false" Style="width:50%"></asp:TextBox><br />
                                    <%--  First Name :<asp:Label ID="lblFname" runat="server" Text="" Class="form-control"></asp:Label>--%>
                                </div>
                                <div class="col-md-6 ">
                                    <br />
                                    <br />
                                    Last Name :
                                    <asp:TextBox ID="txtLName" runat="server" Class="form-control" Enabled="false" Style="width:50%"></asp:TextBox>
                                    <%--  Last Name : <asp:Label ID="lblLname" runat="server" Text="" Class="form-control"></asp:Label>--%>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <br />
                                    DOB :
                                    <asp:TextBox ID="txtDob" runat="server" class="form-control" DataFormatString="{0:dd/MM/yyyy}" SortExpression="Date" Enabled="false" Style="width:60%"></asp:TextBox>
                                    <%--  DOB : <asp:Label ID="lblDOB" runat="server" Text="" Class="form-control" DataFormatString="{0:dd/MM/yyyy}" SortExpression="Date" ></asp:Label>--%>
                                </div>
                                <div class="col-md-6">
                                    <br />
                                    Gender :
                                    <asp:DropDownList ID="ddlGen" runat="server" class="form-control" Enabled="false" Style="width:55%">
                                        <asp:ListItem>Female</asp:ListItem>
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Others</asp:ListItem>
                                    </asp:DropDownList>
                                    <%--  Gender : <asp:Label ID="lblGen" runat="server" Text="" Class="form-control"></asp:Label>--%>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <br />
                                    Blood Group :
                                <asp:DropDownList ID="ddlBl" runat="server" class="dropdown form-control" Enabled="false" Style="width:50%">
                                    <asp:ListItem>O+</asp:ListItem>
                                    <asp:ListItem>O-</asp:ListItem>
                                    <asp:ListItem>A+</asp:ListItem>
                                    <asp:ListItem>A-</asp:ListItem>
                                    <asp:ListItem>B+</asp:ListItem>
                                    <asp:ListItem>B-</asp:ListItem>
                                    <asp:ListItem>AB+</asp:ListItem>
                                    <asp:ListItem>AB-</asp:ListItem>
                                </asp:DropDownList>
                                    <%-- Blood Group : <asp:Label ID="lblBL" runat="server" Text="" Class="form-control"></asp:Label>--%>
                                </div>
                                <div class="col-md-6">
                                    <br />
                                    Adhaar No.:
                                <asp:TextBox ID="txtAdhaarno" runat="server" class="form-control" Enabled="false" Style="width:50%"></asp:TextBox>
                                    <%--  Aadhaar No.: <asp:Label ID="lblAdhar" runat="server" Text="" Class="form-control"></asp:Label>--%>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <br />
                                    E-mail :
                                <asp:TextBox ID="txtMail" runat="server" class="form-control" Enabled="false" Style="width:60%"></asp:TextBox>
                                    <%--  E-Mail : <asp:Label ID="lblMail" runat="server" Text="" Class="form-control"></asp:Label>--%>
                                </div>
                                <div class="col-lg-6">
                                    <br />
                                    Mobile No.:
                                <asp:TextBox ID="txtMob" runat="server" class="form-control" Enabled="false" Style="width:50%"></asp:TextBox>
                                    <%--  Mobile No. : <asp:Label ID="lblMob" runat="server" Text="" Class="form-control"></asp:Label>--%>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <br />
                                    Address :
                                <asp:TextBox ID="txtAdd" runat="server" class="form-control" Enabled="false" Style="width:100%"></asp:TextBox>
                                    <%--  Address :  <asp:Label ID="lblAddress" runat="server" Text="" Class="form-control"></asp:Label>--%>
                                </div>
                            </div>
                            <center>
                                <br />
                                <asp:Button ID="btnEditProfile" runat="server" Text="Edit Profile" class="btn btn-info" OnClick="btnEditProfile_Click" />
                                <asp:Button ID="btnSaveChanges" runat="server" Text="Save Changes" class="btn btn-success" Visible="false" OnClick="btnSaveChanges_Click" />
                                <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn btn-warning" OnClick="btnCancel_Click" />
                            </center>
                            <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
                        </form>
                    </div>
                </div>
                <!-- JavaScript Libraries -->
                <script type="text/javascript" src="LogAssets/js/main.js"></script>
                <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
                <script src="DAssets/lib/chart/chart.min.js"></script>
                <script src="DAssets/lib/easing/easing.min.js"></script>
                <script src="DAssets/lib/waypoints/waypoints.min.js"></script>
                <script src="DAssets/lib/owlcarousel/owl.carousel.min.js"></script>
                <script src="DAssets/lib/tempusdominus/js/moment.min.js"></script>
                <script src="DAssets/lib/tempusdominus/js/moment-timezone.min.js"></script>
                <script src="DAssets/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

                <!-- Template Javascript -->
                <script src="DAssets/js/main.js"></script>
            </div>
        </div>
    </div>
</body>
</html>
