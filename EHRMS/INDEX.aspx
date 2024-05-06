<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="INDEX.aspx.cs" Inherits="EHRMS.INDEX" %>

<!DOCTYPE html>
<html>

<head>
    <!-- Basic -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <!-- Site Metas -->
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="shortcut icon" href="Assets/images/favicon.png" type="">

    <title>CEHRMS</title>

    <!-- bootstrap core css -->
    <link rel="stylesheet" type="text/css" href="Assets/css/bootstrap.css" />

    <!-- fonts style -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700;900&display=swap" rel="stylesheet">

    <!--owl slider stylesheet -->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

    <!-- font awesome style -->
    <link href="Assets/css/font-awesome.min.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="Assets/css/style.css" rel="stylesheet" />
    <!-- responsive style -->
    <link href="Assets/css/responsive.css" rel="stylesheet" />
    <style>
        .login-content img {
            height: 155px;
        }

        .btn-success {
            color: #fff;
            background-color: #28a745;
            border-color: #28a745;
            opacity: 0.8;
        }
    </style>

</head>

<body>
    <div class="hero_area" id="index">

        <div class="hero_bg_box">
            <img src="Assets/images/hero-bg.png" alt="">
        </div>

        <!-- header section strats -->
        <header class="header_section">
            <div class="container">
                <nav class="navbar navbar-expand-lg custom_nav-container ">
                    <a class="navbar-brand" href="INDEX.aspx">
                        <div class="login-content">
                            <img src="DAssets/img/LogoNewTransparent.png" />
                        </div>
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class=""></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav">
                            <li class="nav-item active">
                                <a class="nav-link" href="#index">Home <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#about">About</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#hospitals">Departments</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#doctors">Doctors</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#contact">Contact Us</a>
                            </li>
                            <form runat="server">
                                <div class="nav-item pt-1 mb-5 pb-2">
                                    <asp:Button ID="btnBookApp" runat="server" Text="Registration" CssClass="btn-success   gradient-custom-2 mb-3" OnClick="btnBookApp_Click" />
                                    <asp:Button ID="btnLogin" runat="server" Text="LOGIN" CssClass="btn-success    gradient-custom-2 mb-3" OnClick="btnLogin_Click" />
                                </div>
                            </form>
                        </ul>
                    </div>
                </nav>
            </div>
        </header>
        <!-- end header section -->
        <!-- slider section -->
        <section class="slider_section ">
            <div id="customCarousel1" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="container ">
                            <div class="row">
                                <div class="col-md-7">
                                    <div class="detail-box">
                                        <h1>Your Health is Priority</h1>
                                        <p>
                                            Having A Good Health Is Your Best Investment. Your Health Is Your Wealth. Being Healthy Is The #1 Priority. 
                                        </p>
                                        <div class="btn-box">
                                            <a href="#" class="btn1">Read More
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item ">
                        <div class="container ">
                            <div class="row">
                                <div class="col-md-7">
                                    <div class="detail-box">
                                        <h1>Dare to be Healthy</h1>
                                        <p>
                                            Dare to Be Healthy; Radical Health Revolution; Health: A Serious Game Changer; 
                                        </p>
                                        <div class="btn-box">
                                            <a href="#" class="btn1">Read More
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="container ">
                            <div class="row">
                                <div class="col-md-7">
                                    <div class="detail-box">
                                        <h1>Good Vibes and Good Health</h1>
                                        <p>
                                            Good vibes can have a major impact on our physical health. By practicing self-care, developing positive relationships, exercising regularly                                      
                                        </p>
                                        <div class="btn-box">
                                            <a href="#" class="btn1">Read More
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="container ">
                            <div class="row">
                                <div class="col-md-7">
                                    <div class="detail-box">
                                        <h1>A passion for putting patients first</h1>
                                        <p>
                                            Empowering Patients, Empowering Lives; Transforming Healthcare Through Passion and Innovation;
                                        </p>
                                        <div class="btn-box">
                                            <a href="" class="btn1">Read More
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <ol class="carousel-indicators">
                    <li data-target="#customCarousel1" data-slide-to="0" class="active"></li>
                    <li data-target="#customCarousel1" data-slide-to="1"></li>
                    <li data-target="#customCarousel1" data-slide-to="2"></li>
                    <li data-target="#customCarousel1" data-slide-to="3"></li>
                </ol>
            </div>
        </section>
        <!-- end slider section -->
    </div>


    <!-- department section -->

    <section class="department_section layout_padding">
        <div class="department_container" id="hospitals">
            <div class="container ">
                <div class="heading_container heading_center">
                    <h2>Our Departments
                    </h2>
                    <p>
                        Asperiores sunt consectetur impedit nulla molestiae delectus repellat laborum dolores doloremque accusantium
                    </p>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="box ">
                            <div class="img-box">
                                <img src="Assets/images/s1.png" alt="">
                            </div>
                            <div class="detail-box">
                                <h5>Cardiology
                                </h5>
                                <p>
                                    Fact that a reader will be distracted by the readable page when looking at its layout.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="box ">
                            <div class="img-box">
                                <img src="Assets/images/s2.png" alt="">
                            </div>
                            <div class="detail-box">
                                <h5>Diagnosis
                                </h5>
                                <p>
                                    Fact that a reader will be distracted by the readable page when looking at its layout.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="box ">
                            <div class="img-box">
                                <img src="Assets/images/s3.png" alt="">
                            </div>
                            <div class="detail-box">
                                <h5>Surgery
                                </h5>
                                <p>
                                    Fact that a reader will be distracted by the readable page when looking at its layout.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="box ">
                            <div class="img-box">
                                <img src="Assets/images/s4.png" alt="">
                            </div>
                            <div class="detail-box">
                                <h5>First Aid
                                </h5>
                                <p>
                                    Fact that a reader will be distracted by the readable page when looking at its layout.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="btn-box">
                    <a href="#">View All
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- end department section -->

    <!-- about section -->

    <section class="about_section layout_margin-bottom">
        <div class="container" id="about">
            <div class="row">
                <div class="col-md-6 ">
                    <div class="img-box">
                        <img src="Assets/images/about-img.jpg" alt="">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="detail-box">
                        <div class="heading_container">
                            <h2>About <span>Us</span>
                            </h2>
                        </div>
                        <p>
                            EHR systems are web-based systems that store a patient's complete medical history in a centralized location.
                            Electronic medical record systems are designed to provide healthcare providers with instant access to a 
                            patient's medical information and to support the sharing of information between healthcare providers.

                        </p>
                        <a href="#">Read More
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- end about section -->

    <!-- doctor section -->

    <section class="doctor_section layout_padding">
        <div class="container" id="doctors">
            <div class="heading_container heading_center">
                <h2>Our Doctors
                </h2>
                <p class="col-md-10 mx-auto px-0">
                    Incilint sapiente illo quo praesentium officiis laudantium nostrum, ad adipisci cupiditate sit, quisquam aliquid. Officiis laudantium fuga ad voluptas aspernatur error fugiat quos facilis saepe quas fugit, beatae id quisquam.
                </p>
            </div>
            <div class="row">
                <div class="col-sm-6 col-lg-4 mx-auto">
                    <div class="box">
                        <div class="img-box">
                            <img src="Assets/images/d1.jpg" alt="">
                        </div>
                        <div class="detail-box">
                            <div class="social_box">
                                <a href="#">
                                    <i class="fa fa-facebook" aria-hidden="true"></i>
                                </a>
                                <a href="#">
                                    <i class="fa fa-twitter" aria-hidden="true"></i>
                                </a>
                                <a href="#">
                                    <i class="fa fa-youtube" aria-hidden="true"></i>
                                </a>
                                <a href="#">
                                    <i class="fa fa-linkedin" aria-hidden="true"></i>
                                </a>
                            </div>
                            <h5>Elina Josh
                            </h5>
                            <h6 class="">Doctor
                            </h6>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4 mx-auto">
                    <div class="box">
                        <div class="img-box">
                            <img src="Assets/images/d2.jpg" alt="">
                        </div>
                        <div class="detail-box">
                            <div class="social_box">
                                <a href="#">
                                    <i class="fa fa-facebook" aria-hidden="true"></i>
                                </a>
                                <a href="#">
                                    <i class="fa fa-twitter" aria-hidden="true"></i>
                                </a>
                                <a href="#">
                                    <i class="fa fa-youtube" aria-hidden="true"></i>
                                </a>
                                <a href="#">
                                    <i class="fa fa-linkedin" aria-hidden="true"></i>
                                </a>
                            </div>
                            <h5>Adam View
                            </h5>
                            <h6 class="">Doctor
                            </h6>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4 mx-auto">
                    <div class="box">
                        <div class="img-box">
                            <img src="Assets/images/d3.jpg" alt="">
                        </div>
                        <div class="detail-box">
                            <div class="social_box">
                                <a href="#">
                                    <i class="fa fa-facebook" aria-hidden="true"></i>
                                </a>
                                <a href="">
                                    <i class="fa fa-twitter" aria-hidden="true"></i>
                                </a>
                                <a href="#">
                                    <i class="fa fa-youtube" aria-hidden="true"></i>
                                </a>
                                <a href="#">
                                    <i class="fa fa-linkedin" aria-hidden="true"></i>
                                </a>
                            </div>
                            <h5>Mia Mike
                            </h5>
                            <h6 class="">Doctor
                            </h6>
                        </div>
                    </div>
                </div>
            </div>
            <div class="btn-box">
                <a href="#">View All
                </a>
            </div>
        </div>
    </section>

    <!-- end doctor section -->

    <!-- contact section -->
    <section class="contact_section layout_padding">
        <div class="container" id="contact">
            <div class="heading_container">
                <h2>Get In Touch
                </h2>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form_container contact-form">
                        <form>
                            <div class="form-row">
                                <div class="col-lg-6">
                                    <div>
                                        <input type="text" placeholder="Your Name" />
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div>
                                        <input type="text" placeholder="Phone Number" />
                                    </div>
                                </div>
                            </div>
                            <div>
                                <input type="email" placeholder="Email" />
                            </div>
                            <div>
                                <input type="text" class="message-box" placeholder="Message" />
                            </div>
                            <div class="btn_box">
                                <button>
                                    SEND
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="map_container">
                        <div class="map">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3736.8299017949444!2d86.39906286493935!3d20.513198089208103!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a197c9e74fc4201%3A0x6e2e698b8b3f4687!2sKendrapara%20Autonomous%20College!5e0!3m2!1sen!2sin!4v1676272165893!5m2!1sen!2sin"
                                width="100%" height="595" style="border: 0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- end contact section -->

    <!-- client section -->

    <section class="client_section layout_padding-bottom">
        <div class="container">
            <div class="heading_container heading_center ">
                <h2>Testimonial
                </h2>
            </div>
            <div id="carouselExample2Controls" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="row">
                            <div class="col-md-11 col-lg-10 mx-auto">
                                <div class="box">
                                    <div class="img-box">
                                        <img src="DAssets/img/testimonial-1.jpg" alt="" />
                                    </div>
                                    <div class="detail-box">
                                        <div class="name">
                                            <h6>Testimonial: 1
                                            </h6>
                                        </div>
                                        <p>
                                            I wanted to share some positive feedback regarding the centralized health records management system. 
                                            It has significantly streamlined the workflow, improved efficiency, and enhanced data security. 
                                            Accessing patient records is now seamless, thanks to its user-friendly interface. 
                                            Overall, it's been a game-changer for everyone. Great job to the team behind its development!

                                        </p>
                                        <i class="fa fa-quote-left" aria-hidden="true"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="row">
                            <div class="col-md-11 col-lg-10 mx-auto">
                                <div class="box">
                                    <div class="img-box">
                                        <img src="DAssets/img/testimonial-2.jpg" alt="" />
                                    </div>
                                    <div class="detail-box">
                                        <div class="name">
                                            <h6>Testimonial: 2
                                            </h6>
                                        </div>
                                        <p>
                                            Great job team, Such a fantastic platform.
                                        </p>
                                        <i class="fa fa-quote-left" aria-hidden="true"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="row">
                            <div class="col-md-11 col-lg-10 mx-auto">
                                <div class="box">
                                    <div class="img-box">
                                        <img src="Assets/images/client.jpg" alt="" />
                                    </div>
                                    <div class="detail-box">
                                        <div class="name">
                                            <h6>Testimonial: 3
                                            </h6>
                                        </div>
                                        <p>
                                            Everything is good but online payment system should be there for seamless process.
                                        </p>
                                        <i class="fa fa-quote-left" aria-hidden="true"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel_btn-container">
                    <a class="carousel-control-prev" href="#carouselExample2Controls" role="button" data-slide="prev">
                        <i class="fa fa-long-arrow-left" aria-hidden="true"></i>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExample2Controls" role="button" data-slide="next">
                        <i class="fa fa-long-arrow-right" aria-hidden="true"></i>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- end client section -->

    <!-- footer section -->
    <footer class="footer_section">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-lg-3 footer_col">
                    <div class="footer_contact">
                        <h4>Reach at..
                        </h4>
                        <div class="contact_link_box">
                            <a href="#">
                                <i class="fa fa-map-marker" aria-hidden="true"></i>
                                <span>Location
                                </span>
                            </a>
                            <a href="#">
                                <i class="fa fa-phone" aria-hidden="true"></i>
                                <span>Call +01 1234567890
                                </span>
                            </a>
                            <a href="#">
                                <i class="fa fa-envelope" aria-hidden="true"></i>
                                <span>demo@gmail.com
                                </span>
                            </a>
                        </div>
                    </div>
                    <div class="footer_social">
                        <a href="#">
                            <i class="fa fa-facebook" aria-hidden="true"></i>
                        </a>
                        <a href="#">
                            <i class="fa fa-twitter" aria-hidden="true"></i>
                        </a>
                        <a href="#">
                            <i class="fa fa-linkedin" aria-hidden="true"></i>
                        </a>
                        <a href="#">
                            <i class="fa fa-instagram" aria-hidden="true"></i>
                        </a>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 footer_col">
                    <div class="footer_detail">
                        <h4>About
                        </h4>
                        <p>
                            The CEHRMS project aims to provide a centralized platform for efficient management
                            of electronic health records and related tasks within healthcare facilities.                       
                        </p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-2 mx-auto footer_col">
                    <div class="footer_link_box">
                        <h4>Links
                        </h4>
                        <div class="footer_links">
                            <a class="active" href="#index">Home
                            </a>
                            <a class="" href="#about">About
                            </a>
                            <a class="" href="#hospitals">Departments
                            </a>
                            <a class="" href="#doctors">Doctors
                            </a>
                            <a class="" href="#contact">Contact Us
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 footer_col ">
                    <h4>Newsletter
                    </h4>
                    <form action="#">
                        <input type="email" placeholder="Enter email" />
                        <button type="submit">
                            Subscribe
                        </button>
                    </form>
                </div>
            </div>
            <div class="footer-info">
                <p>
                    &copy; <span id="displayYear"></span> All Rights Reserved By
          <a href="#">CEHRMS Project Group Members<br>
              <br>
          </a>
                    &copy; <span id="displayYear"></span> Distributed By
            <a href="#">KAC Students</a>
                </p>

            </div>
        </div>
    </footer>
    <!-- footer section -->

    <!-- jQery -->
    <script type="text/javascript" src="Assets/js/jquery-3.4.1.min.js"></script>
    <!-- popper js -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
    </script>
    <!-- bootstrap js -->
    <script type="text/javascript" src="Assets/js/bootstrap.js"></script>
    <!-- owl slider -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
    </script>
    <!-- custom js -->
    <script type="text/javascript" src="Assets/js/custom.js"></script>
    <!-- Google Map -->
    <%-- <a href="#googleMap">
    <script src="https://www.google.com/maps/place/Kendrapada+Autonomous+College/@20.5132232,86.3966489,17z/data=!3m1!4b1!4m6!3m5!1s0x3a197c9e74fc4201:0x6e2e698b8b3f4687!8m2!3d20.5132182!4d86.3992238!16s%2Fg%2F11bt_3cr37?entry=ttu">
    </script></a>--%>
    <!-- End Google Map -->

</body>

</html>
