<%-- 
    Document   : signup
    Created on : Feb 25, 2019, 9:59:10 PM
    Author     : Brian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
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

        <nav class="navbar bg-dark">
            <div class="navbar-header">
                <div class="navbar-brand">
                    <h2>
                        <a href="#">
                            Chambers Hub
                        </a>
                    </h2>
                </div>
            </div>
            <div class="nav navbar-nav">
                <div class="nav-item">
                    <a href="index.jsp">
                        Home
                    </a>
                </div>
            </div>
        </nav>

        <div class="intro">
            <div class="container text-center">
                <p class="display-4">
                    User Registration
                </p>
                <p>
                    <span class="text-danger">*</span> Is compulsory.
                </p>
            </div>
        </div>

        <div class="container col-md-5 col-sm-12">
            <form method="post" action="Signup">
                <div class="form-group">
                    <label>
                        First Name
                        <span class="text-danger">*</span>
                    </label>
                    <div class="input-group">
                        <input type="text" name="first_name" placeholder="First Name" required="required" class="form-control text-center">
                    </div>
                </div>
                <div class="form-group">
                    <label>
                        Last Name
                        <span class="text-danger">*</span>
                    </label>
                    <div class="input-group">
                        <input type="text" name="last_name" placeholder="Last Name" required="required" class="form-control text-center">
                    </div>
                </div>
                <div class="form-group">
                    <label>
                        Email
                        <span class="text-danger">*</span>
                    </label>
                    <div class="input-group">
                        <input type="email" name="email" placeholder="example@gmail.com" required="required" class="form-control text-center">
                    </div>
                </div>
                <div class="form-group">
                    <label>
                        Phone Number
                        <span class="text-danger">*</span>
                    </label>
                    <div class="input-group">
                        <input type="text" name="phone_number" placeholder="0712345678" required="required" class="form-control text-center">
                    </div>
                </div>
                <div class="form-group">
                    <label>
                        Gender
                        <span class="text-danger">*</span>
                    </label>
                    <div class="input-group">
                        Male:<input type="radio" name="gender" value="male"  required="required" class="form-control text-center">
                        Female:<input type="radio" name="gender" value="female"  required="required" class="form-control text-center">
                        Other:<input type="radio" name="gender" value="other"  required="required" class="form-control text-center">
                    </div>
                </div>
                <div class="form-group">
                    <label>
                        Password
                        <span class="text-danger">*</span>
                    </label>
                    <div class="input-group">
                        <input type="password" name="password" placeholder="*********" class="form-control text-center"> 
                    </div>
                </div>
                <div class="form-group">
                    <label>
                        Confirm Password
                        <span class="text-danger">*</span>
                    </label>
                    <div class="input-group">
                        <input type="password" name="pass" placeholder="*********" class="form-control text-center"> 
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group text-center">
                        <input type="submit" name="signup" value="Sign Up" class="btn btn-success">
                    </div>
                </div>
            </form>
        </div>

        <div class="text-center container">
            <p class="text-primary">
                <a href="login.jsp">
                    Already have an account?
                </a>
            </p>
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
