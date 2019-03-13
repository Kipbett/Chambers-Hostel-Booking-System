<%-- 
    Document   : index
    Created on : Feb 25, 2019, 9:57:37 PM
    Author     : Brian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome To Chamber Hub</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <style>
            .navbar-toggler-icon {
                background-image: url("data:image/svg+xml;charset=utf8,%3Csvg viewBox='0 0 32 32' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath stroke='rgba(255,255,255, 1)' stroke-width='2' stroke-linecap='round' stroke-miterlimit='10' d='M4 8h24M4 16h24M4 24h24'/%3E%3C/svg%3E");
            }
            .intro-message {
                position: relative;
                padding-top: 20%;
                padding-bottom: 20%;
            }
            .intro-message > h1 {
                margin: 0;
                font-size: 5em;
                text-shadow: 2px 2px 3px rgba(0, 0, 0, 0.6);
            }

            .intro-divider {
                width: 400px;
                border-top: 1px solid #f8f8f8;
                border-bottom: 1px solid rgba(0, 0, 0, 0.2);
            }

            .intro-message > h3 {
                text-shadow: 2px 2px 3px rgba(0, 0, 0, 0.6);
            }
            .banner {
                padding: 100px 0;
                color: #f8f8f8;
                background: url(img/Corridor Entrance 2.jpg) no-repeat center center;
                background-size: cover;
            }

            .banner h2 {
                margin: 0;
                text-shadow: 2px 2px 3px rgba(0, 0, 0, 0.6);
                font-size: 3em;
            }

            .banner ul {
                margin-bottom: 0;
            }

            .banner-social-buttons {
                float: right;
                margin-top: 0;
            }
        </style>
    </head>
    <body>
        <nav class="navbar bg-dark">
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
                            <a href="index.jsp" class="active nav-link">Home</a>
                        </li>
                        <li>
                            <a href="about.jsp" class="nav-link">About us</a>
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
        <div class="intro-header bg-light">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="intro-message">
                            <h1 class="text-center text-primary">Welcome To Chambers Hub</h1>
                            <h3 class="text-center text-primary">Affordable and comfortable Living for Everyone</h3>
                            <hr class="intro-divider">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="banner">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <h2 class="text-info">Connect to Chambers Hub:</h2>
                    </div>
                    <div class="col-lg-6">
                        <div class="list-inline banner-social-buttons">
                            <a href="https://twitter.com/" class="btn btn-primary btn-lg" target="_blank"><i class="fas fa-twitter fa-fw"></i> <span class="network-name">Twitter</span></a>
                            <a href="https://facebook.com" class="btn btn-primary btn-lg" target="_blank"><i class="fas fa-facebook fa-fw"></i> <span class="network-name">Facebook</span></a>
                            <a href="#" class="btn btn-primary btn-lg" target="_blank"><i class="fa fa-linkedin fa-fw"></i> <span class="network-name">Linkedin</span></a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
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
