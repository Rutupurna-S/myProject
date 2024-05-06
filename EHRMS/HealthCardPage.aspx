<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HealthCardPage.aspx.cs" Inherits="EHRMS.HealthCardPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HealthCardPage</title>
    <link href="Assets/bootstrap-4.0.0-dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        .qrcode {
            width: 150Px;
            height: 150px;
            margin-left: 41rem;
            margin-top: -97px;
        }

        .bo {
            width: 55rem;
            height: 480px;
            background-image: url('DAssets/img/HealthCardNewBgCrop.png');
            background-size: cover;
            border : dotted;
            border-color : lawngreen;
        }

        .details {
            padding-top: 105px;
            padding-left: 31px;
        }
    </style>
</head>
<body>
    <div class="bg">
        <form id="form1" runat="server">
            <div id="printDiv" runat="server" style="padding-left: 25rem; padding-top: 8rem;">
                <div class="bo">
                    <div class="details">
                        <h2 class="card-title">
                            <asp:Label ID="lblname" runat="server" Text=""></asp:Label></h2>
                        <h2 class="card-title">
                            <asp:Label ID="lblHealthId" runat="server" Text=""></asp:Label></h2>
                        <h2 class="card-title">
                            <asp:Label ID="lblDOB" runat="server" Text=""></asp:Label></h2>
                        <h2 class="card-title">
                            <asp:Label ID="lblGen" runat="server" Text=""></asp:Label></h2>
                        <h2 class="card-title">
                            <asp:Label ID="lblMob" runat="server" Text=""></asp:Label></h2>
                        <div class="qrcode">
                            <asp:Image ID="Image1" runat="server" CssClass="card-img-top" AlternateText="QR Code Image" />
                        </div>
                    </div>
                </div>
            </div>
            <asp:Button ID="btnLogin" runat="server" Text="Login" Class="btn btn-success" OnClick="BtnLogin_Click" />
            <asp:Button ID="btnPDF" runat="server" Text="Download PDF" Class="btn btn-success" OnClick="BtnPdf_Click" />
        </form>
        </div>
</body>
</html>
