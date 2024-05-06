<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Appointments.aspx.cs" Inherits="EHRMS.Appointments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book Appointment</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    
    <style>
        body {

            background-repeat: no-repeat;
            background-size: cover;
        }

        .login-content img {
            height: 150px;
            margin-left: 162px;
            margin-top: -47px;
        }

        .btn-success {
            --bs-btn-bg: #41a074;
        }

        .btn-warning {
            --bs-btn-bg: #ffc107;
            --bs-btn-border-color: #e9bf3f;
            --bs-btn-hover-bg: #dfb537;
        }
    </style>
</head>
<body background="Assets/images/BOOK%20AN%20APPOINTMENT.png">
    <div class="container ">
        <div class="row align-items-right h-100">
            <div class="col-sm-6"></div>
            <div class="col-sm-6">
                <div class=" rounded-3 text-black">
                    <div class="row g-0">
                        <div class="card-body p-md-5 mx-md-4">
                            <form class="form-inline login-content" runat="server">
                                <div class="logo ">
                                    <img src="DAssets/img/LogoNewBetter.png" />
                                </div>
                                <div class="container-fluid">
                                    <br />
                                    <h4>Please Book Your Appointment</h4>
                                    <br />
                                </div>
                                <div class="form-outline mb-4">
                                    Select Hospital : <asp:DropDownList ID="ddlHospital" runat="server" Class="form-control" OnSelectedIndexChanged="Hospital_SelectedIndexChanged1" AutoPostBack="true"></asp:DropDownList>
                                </div>
                                <div class="form-outline mb-4">
                                  Select Department :  <asp:DropDownList ID="ddlDepartment" runat="server" class="form-control" OnSelectedIndexChanged="Department_SelectedIndexChanged1"></asp:DropDownList>
                                </div>
                                <div class="form-outline mb-4">
                                  Select Doctor : <asp:DropDownList ID="ddlDoctor" runat="server" class="form-control" OnSelectedIndexChanged="Doctor_SelectedIndexChanged1"></asp:DropDownList>
                                </div>
                                <div class="form-outline mb-4">
                                  Date :  <asp:TextBox ID="txtDate" TextMode="Date" class="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-outline mb-4">
                                   Time : <asp:TextBox ID="txtTime" TextMode="Time" class="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="text-center pt-1 mb-5 pb-1">
                                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-success  gradient-custom-2 mb-3" OnClick="btnSubmit_Click" />
                                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-warning gradient-custom-2 mb-3" OnClick="btnCancel_Click" />
                                    <asp:Label ID="lblMsg" runat="server" Text="" ForeColor="Red"></asp:Label>
                                </div>
                            </form>
                        </div>
                    </div>
               </div>
            </div>
        </div>
    </div>
</body>
</html>
