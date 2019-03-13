<%-- 
    Document   : forgot
    Created on : Feb 26, 2019, 11:42:45 AM
    Author     : Brian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Recover Password</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.js"></script>
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
        
        <div class="container">
            <p class="display-2 text-center">
                Recover Your Password.
            </p>
            <p class="text-center">
                Enter Your Email Address
            </p>
        </div>
        
        <div class="container col-md-5 col-sm-12">
            <form method="post" action="Forgot">
                <div class="form-group">
                    <label>
                        Enter Your Email Address;
                    </label>
                    <div class="input-group">
                        <input type="email" name="email" class="form-control text-center" placeholder="example@gmail.com">
                        <input type="submit" name="send" class="btn btn-primary" value="Send Email">
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
