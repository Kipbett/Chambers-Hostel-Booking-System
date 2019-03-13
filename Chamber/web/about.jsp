<%-- 
    Document   : about
    Created on : Feb 25, 2019, 9:57:54 PM
    Author     : Brian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Chambers</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <style>
            .navbar-toggler-icon {
                background-image: url("data:image/svg+xml;charset=utf8,%3Csvg viewBox='0 0 32 32' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath stroke='rgba(255,255,255, 1)' stroke-width='2' stroke-linecap='round' stroke-miterlimit='10' d='M4 8h24M4 16h24M4 24h24'/%3E%3C/svg%3E");
            }
            .intro {
                padding: 50px 0;
            }
            .callout {
                color: orange;
                display: table;
                height: 400px;
                width: 100%;
                background: url(img/First FLoor.jpg) no-repeat center center fixed; 
                -webkit-background-size: cover;
                -moz-background-size: cover;
                -o-background-size: cover;
                background-size: cover;
            }
            .services {
                background: #7fbbda;
                padding: 50px 0;
                color: #ffffff;
            }

            .service-item {
                margin-bottom: 15px;
            }

            i.service-icon {
                border: 3px solid #ffffff;
                border-radius: 50%;
                display: inline-block;
                font-size: 56px;
                width: 140px;
                height: 140px;
                line-height: 136px;
                vertical-align: middle; 
                text-align: center;
            }
            .vert-text {
                display: table-cell;
                vertical-align: middle;
                text-align: center;
            }

            .vert-text h1 {
                padding: 0;
                margin: 0;
                font-size: 4.5em;
                font-weight: 700;
            }
            .portfolio {
                padding: 50px;
            }

            .portfolio-item {
                margin-bottom: 25px;
            }

            .img-portfolio {
                margin: 0 auto;
                height: 500px;
                width: 500px;
            }

            #navigation{
                display: inline-block;
                position: relative;
            }

        </style>
    </head>
    <body>
        <nav class="navbar fix-top bg-dark navbar-expand-md">
            <div class="container">
                <h1>
                    <a class="navbar-brand" href="#">Chambers Hub</a>
                </h1>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#chambers" aria-controls="chambers" aria-expand="true" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="chambers">
                    <ul class="nav nav-pills">
                        <li>
                            <a href="index.jsp" class="nav-link">Home</a>
                        </li>
                        <li>
                            <a href="about.jsp" class="active nav-link">About us</a>
                        </li>
                        <li>
                            <a href="booking.jsp" class="nav-link">Booking</a>
                        </li>
                        <li>
                            <%
                                if (session.getAttribute("email") == null) {
                                    out.println("<a href='login.jsp' class='nav-link'>Log In</a>");
                                } else {
                                    out.println("<a href='logout.jsp' class='nav-link'>Log Out</a>");
                                }
                            %>
                        </li>
                        <li>
                            <a href="signup.jsp" class="nav-link">Sign Up</a>
                        </li>
                        <li>
                            <a href="profile.jsp" class="nav-link">Profile</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Intro -->
        <div id="about" class="intro">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <h2>Welcome To Sunvalley</h2>
                        <p class="lead">Come Stay With Us to Enjoy and receive the best an affordable accommodation you can ever get throughout your stay</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Intro -->

        <!-- Services -->
        <div id="services" class="services">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-md-offset-12 text-center">
                        <h2>About Us</h2>
                        <hr>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3 col-sm-12 col-md-offset-3 text-center">
                        <div class="service-item">
                            <i class="service-icon far fa-building"></i>
                            <h4>Affordable Accommodation</h4>
                            <p>Chambers Hub is a place to call home. We encourage co-existence among our members. It definately a home far from home.</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-12 text-center">
                        <div class="service-item">
                            <i class="service-icon fa fa-suitcase"></i>
                            <h4>Spacious Rooms</h4>
                            <p>Our Rooms are spacious and can accommodate at most 2 people and still have enough space to add other personal items in their rooms. The houses are <b>two-bedrooms</b> and therfore each tenant gets their privacy</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-12 text-center">
                        <div class="service-item">
                            <i class="service-icon fa fa-truck"></i>
                            <h4>Available Services</h4>
                            <p>At the hostels water is available at all times and are provided inside your rooms. The tenants are expected to pay their own electricity bills</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-12 text-center">
                        <div class="service-item">
                            <i class="service-icon fa fa-headphones"></i>
                            <h4>Entertainment</h4>
                            <p>The hostels provides a 24 Hrs accessible TV room equipped with a 24 inch screen and a premium payed DSTV decoder. You can always be upto date in all terms pertaining Sports, Politics and other Entertainment activities happening around you without having to go far from your place residence.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Services -->

        <!-- Callout -->
        <div class="callout">
            <div class="vert-text">
                <h1>Chambers Hub is the place to be</h1>
            </div>
        </div>
        <!-- /Callout -->

        <!-- Portfolio -->
        <div id="portfolio" class="portfolio">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-md-offset-12 text-center">
                        <h2>Chambers Hub Images</h2>
                        <hr>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 col-sm-12 text-center">
                        <div class="portfolio-item">
                            <a href="#">
                                <img class="img-portfolio img-responsive img-thumbnail" src="img/Gate D.jpg">
                            </a>
                            <h4>Hostel Entrance</h4>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12 text-center">
                        <div class="portfolio-item">
                            <a href="#">
                                <img class="img-portfolio img-responsive img-thumbnail" src="img/Middle View.jpg">
                            </a>
                            <h4>Entertainment Hub</h4>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 col-sm-12 col-md-offset-2 text-center">
                        <div class="portfolio-item">
                            <a href="#">
                                <img class="img-portfolio img-responsive img-thumbnail" src="img/Corridor Entrance 2.jpg">
                            </a>
                            <h4>Inside The Rooms</h4>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12 text-center">
                        <div class="portfolio-item">
                            <a href="#">
                                <img class="img-portfolio img-responsive img-thumbnail" src="img/Upper View.jpg">
                            </a>
                            <h4>Complete View</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Portfolio -->
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <p class="copyright text-muted small">Copyright &copy; Chambers Hub 2019. All Rights Reserved</p>
                    </div>
                </div>
            </div>
        </footer>
    </body>
</html>
