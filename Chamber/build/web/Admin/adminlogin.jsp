<%-- 
    Document   : adminlogin
    Created on : Mar 11, 2019, 10:17:32 AM
    Author     : Brian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title><link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <style>
            form{
                padding: 10px;
                border: solid black;
                border-radius: 2mm;
            }

        </style>
    </head>
    <body>
        <nav class="navbar fix-top navbar-light bg-dark">
            <div class="container">
                <h2 class="navbar-brand">
                    <a href="#">Chambers Hub</a>
                </h2>
            </div>
        </nav>
        <div class="intro">
            <div class="container text-center">
                <p class="display-4">
                    Admin Login
                </p>
            </div>
        </div>
        
        <div class="container col-md-5 col-sm-12">
            <form method="post" action="AdminLogin">
                <div class="form-group">
                    <label>
                        Email
                    </label>
                    <div class="input-group">
                        <input type="email" name="email" required="required" class="form-control text-center" placeholder="example@gmail.com">
                    </div>
                </div>
                <div class="form-group">
                    <label>
                        Password
                    </label>
                    <div class="input-group">
                        <input type="password" name="pass" placeholder="*********" class="form-control text-center" required="required">
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <input type="submit" name="submit" value="Log In" class="btn btn-primary btn-block">
                    </div>
                </div>
            </form>
        </div>
        <div class="container">
            <p class="text-center text-primary">
                <a href="#">
                    Forgot Password?
                </a>
            </p>
            <p class="text-center text-primary">
                <a href="#">
                    Do not have an account?
                </a>
            </p>
        </div>
    </body>
</html>
