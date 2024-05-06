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

        .form-group {
            margin-bottom: 1rem;
            margin-top: -454px;
            margin-left: 350px;
        }

        .py-4 {
            padding-top: 1.5rem !important;
            padding-bottom: 1.5rem !important;
            height: 110px;
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
                            <a href="#" class="nav-item nav-link ac tive"><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
                            <a href="Appointments.aspx" class="nav-item nav-link ac tive"><i class="fa fa-tachometer-alt me-2"></i>Book Appointment</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Manage Appointment</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="PatientAppHistory.aspx" class="dropdown-item">History</a>
                                    <a href="UpcomingAppPatient.aspx" class="dropdown-item">Upcoming</a>
                                </div>
                            </div>
                            <a href="#" class="nav-item nav-link"><i class="fa fa-keyboard me-2"></i>Pathology Report</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Bills & Payment</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="DoctorFee.aspx" class="dropdown-item">Doctors Fee</a>
                                    <a href="MedicineFee.aspx" class="dropdown-item">Medicine Fee</a>
                                    <a href="PatientPathoTest.aspx" class="dropdown-item">Pathology Tests Fee</a>
                                </div>
                            </div>
                            <a href="#" class="nav-item nav-link"><i class="fa fa-chart-bar me-2"></i>Order Medicine</a>
                            <a href="#" class="nav-item nav-link"><i class="fa fa-th me-2"></i>Feedback</a>
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
                            <a href="UserProfile.aspx" class="dropdown-item">My Profile</a>
                            <a href="ChangePassword.aspx" class="dropdown-item">Change Password</a>
                            <a href="Login.aspx" class="dropdown-item">Log Out</a>
                        </div>
                    </div>
                </nav>
                <!-- Navbar end -->
                <div class="container">
                    <div class="login-content">
                        <form runat="server">
                                <div class="row">
                                    <div class="col-md-12">
                                        First Name :<asp:TextBox ID="txtFName" runat="server" class="form-control" Enabled="false"></asp:TextBox><br />
                                        <%--                                First Name :<asp:Label ID="lblFname" runat="server" Text="" Class="form-control"></asp:Label>--%>
                                    </div>
                                    <div class="col-md-12">
                                        Last Name :<asp:TextBox ID="txtLName" runat="server" Class="form-control" Enabled="false"></asp:TextBox>
                                        <%--                               Last Name : <asp:Label ID="lblLname" runat="server" Text="" Class="form-control"></asp:Label>--%>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        DOB :<asp:TextBox ID="txtDob" runat="server" class="form-control" DataFormatString="{0:dd/MM/yyyy}" SortExpression="Date" Enabled="false"></asp:TextBox>
                                        <%--                            DOB : <asp:Label ID="lblDOB" runat="server" Text="" Class="form-control" DataFormatString="{0:dd/MM/yyyy}" SortExpression="Date" ></asp:Label>--%>
                                    </div>
                                    <div class="col-md-12">
                                        Gender :<asp:DropDownList ID="ddlGen" runat="server" class="form-control" Enabled="false">
                                            <asp:ListItem>Female</asp:ListItem>
                                            <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Others</asp:ListItem>
                                        </asp:DropDownList>
                                        <%--                               Gender : <asp:Label ID="lblGen" runat="server" Text="" Class="form-control"></asp:Label>--%>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        Blood Group :
                                <asp:DropDownList ID="ddlBl" runat="server" class="dropdown form-control" Enabled="false">
                                    <asp:ListItem>O+</asp:ListItem>
                                    <asp:ListItem>O-</asp:ListItem>
                                    <asp:ListItem>A+</asp:ListItem>
                                    <asp:ListItem>A-</asp:ListItem>
                                    <asp:ListItem>B+</asp:ListItem>
                                    <asp:ListItem>B-</asp:ListItem>
                                    <asp:ListItem>AB+</asp:ListItem>
                                    <asp:ListItem>AB-</asp:ListItem>
                                </asp:DropDownList>
                                        <%--                               Blood Group : <asp:Label ID="lblBL" runat="server" Text="" Class="form-control"></asp:Label>--%>
                                    </div>
                                    <div class="col-md-12">
                                        Adhaar No.:
                                <asp:TextBox ID="txtAdhaarno" runat="server" class="form-control" Enabled="false"></asp:TextBox>
                                        <%--                               Aadhaar No.: <asp:Label ID="lblAdhar" runat="server" Text="" Class="form-control"></asp:Label>--%>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        E-mail :
                                <asp:TextBox ID="txtMail" runat="server" class="form-control" Enabled="false"></asp:TextBox>
                                        <%--                               E-Mail : <asp:Label ID="lblMail" runat="server" Text="" Class="form-control"></asp:Label>--%>
                                    </div>
                                    <div class="col-md-12">
                                        Mobile No.:
                                <asp:TextBox ID="txtMob" runat="server" class="form-control" Enabled="false"></asp:TextBox>
                                        <%--                               Mobile No. : <asp:Label ID="lblMob" runat="server" Text="" Class="form-control"></asp:Label>--%>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        Address :
                                <asp:TextBox ID="txtAdd" runat="server" class="form-control" Enabled="false"></asp:TextBox>
                                        <%--                               Address :  <asp:Label ID="lblAddress" runat="server" Text="" Class="form-control"></asp:Label>--%>
                                    </div>
                                </div>
                                <center>
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
