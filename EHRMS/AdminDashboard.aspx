﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="EHRMS.AdminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>ADMIN DASHBOARD</title>
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
            margin-top: -65px;
            padding-left: 190px;
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
                            <a href="" class="nav-item nav-link ac tive"><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Manage Patient</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="#" class="dropdown-item">View Patient History</a>
                                    <a href="#" class="dropdown-item">Show Total No. Of Patients</a>
                                </div>
                            </div>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Manage Appointment</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="#" class="dropdown-item">History</a>
                                    <a href="#" class="dropdown-item">Upcoming Appointment</a>
                                    <a href="#" class="dropdown-item">Today’s  Appointments</a>
                                </div>
                            </div>
                            <a href="#" class="nav-item nav-link"><i class="fa fa-keyboard me-2"></i>Grievance</a>
                            <a href="#" class="nav-item nav-link"><i class="fa fa-keyboard me-2"></i>Leave Management</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Employee Management</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="#" class="dropdown-item">Add Employee</a>
                                    <a href="#" class="dropdown-item">View Employee</a>
                                </div>
                            </div>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Feedback</a>
                                <div class="dropdown-menu bg-transparent border-0">
                                    <a href="#" class="dropdown-item">View feedback</a>
                                    <a href="#" class="dropdown-item">Reply feedback</a>
                                </div>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
            <!-- Sidebar End -->
            <!-- Content Start -->
            <div class="content">
                <!-- Navbar Start -->
                <nav class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-4">
                            <h4 class="text-success">EmployeeId: 
                            <asp:Label ID="lblMsg" runat="server" Text="" ForeColor="Green"></asp:Label>
                            </h4>
                        <div class="d-flex align-items-right align-items-end dropdown" style="">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                                <img class="rounded-circle me-lg-2" src="DAssets/img/UserAvtar.png" alt="" style="width: 40px; height: 40px; margin-left: 800px" />
                                <span class="d-none d-lg-inline-flex">
                                    <asp:Label ID="lblUserName" runat="server" Text="" ForeColor="Green"></asp:Label>
                                </span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                                <a href="UserProfile.aspx" class="dropdown-item">My Profile</a>
                                <a href="ChangePassword.aspx" class="dropdown-item">Password Settings</a>
                                <a href="#" class="dropdown-item">Log Out</a>
                            </div>
                        </div>
                </nav>
                <!-- Navbar end -->
                <div class="container-fluid pt-5 px-5">
                    <div class="row g-4">
                        <div class="backimg">
                            <img src="DAssets/img/LogoNewBetter.png" style="height: 500px" />
                        </div>
                        <div class="col-sm-4 ">
                            <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                                <i class="fa fa-chart-line fa-6x text-success"></i>
                                <div class="ms-4">
                                    <h4 class="mb-2"><b>Total No. Of Visit</b></h4>
                                    <h5 class="mb-0">$1234</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-xl-4">
                            <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                                <i class="fa fa-chart-bar fa-6x text-success"></i>
                                <div class="ms-4">
                                    <h4 class="mb-2"><b>Upcoming Visit</b></h4>
                                    <h5 class="mb-0">$1234</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-xl-4">
                            <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                                <i class="fa fa-chart-area fa-6x text-success"></i>
                                <div class="ms-6">
                                    <h4 class="mb-2"><b>Expenditure</b></h4>
                                    <h5 class="mb-0">$1234</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- JavaScript Libraries -->
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
</body>
</html>
