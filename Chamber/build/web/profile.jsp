<%-- 
    Document   : profile
    Created on : Feb 25, 2019, 9:58:08 PM
    Author     : Brian
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Profile</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <style>
            .navbar-toggler-icon {
                background-image: url("data:image/svg+xml;charset=utf8,%3Csvg viewBox='0 0 32 32' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath stroke='rgba(255,255,255, 1)' stroke-width='2' stroke-linecap='round' stroke-miterlimit='10' d='M4 8h24M4 16h24M4 24h24'/%3E%3C/svg%3E");
            }
            table{
                padding: 10px;
                margin: 10px;
            }
        </style>
    </head>
    <body>
        <%
            String email = (String) session.getAttribute("email");
            int int_phone_number;
            String room_name;
            int amount_paid;
            int balance;
            String date_of_transaction;
            try {
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/chambers", "root", "");
        %>

        <nav class="navbar bg-dark">
            <div class="container">
                <h1>
                    <a class="navbar-brand" href="#">Chambers Hub</a>
                </h1>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#chambers" aria-controls="chambers" aria-expand="true" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="chambers">
                    <ul class="nav nav-pills" id="chambers">
                        <li>
                            <a href="index.jsp" class="nav-link">Home</a>
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
                            <a href="profile.jsp" class="active nav-link">Profile</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-12">
                    <div>
                        <img class="img-thumbnail img-responsive fa fa-camera" src="">
                    </div>
                    <div class="text-center, text-primary">
                        <span class="fa fa-pencil text-right"></span>
                        <p>
                            <%
                                PreparedStatement pstmt = conn.prepareStatement("select first_name, last_name from customers where email=?");
                                pstmt.setString(1, email);
                                ResultSet rst = pstmt.executeQuery();
                                while (rst.next()) {
                                    out.println(rst.getString("first_name") + " " + rst.getString("last_name"));
                                }
                            %>
                        </p>
                        <p>
                            <%=session.getAttribute("email")%>
                        </p>
                        <p>
                            <%
                                PreparedStatement stmt = conn.prepareStatement("Select * from customers where email=?");
                                stmt.setString(1, email);
                                ResultSet rs = stmt.executeQuery();
                                while (rs.next()) {
                                    int_phone_number = rs.getInt("phone_number");
                                    String phone_number = Integer.toString(int_phone_number);
                                    out.println(phone_number);
                                }
                            %>
                        </p>
                    </div>
                </div>
                <div class="col-md-8 col-sm-12">
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    Room Occupied
                                </td>
                                <td>
                                    <%
                                        PreparedStatement stmt2 = conn.prepareStatement("select * from payment where email=?");
                                        stmt2.setString(1, email);
                                        ResultSet rs2 = stmt2.executeQuery();
                                        while (rs2.next()) {
                                            room_name = rs2.getString("room_name");
                                            amount_paid = rs2.getInt("amount_paid");
                                            balance = rs2.getInt("balance");
                                            out.println(room_name);
                                    %>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Total Amount Paid
                                </td>
                                <td>
                                    <%
                                        out.println(amount_paid);
                                    %>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Balance Remaining
                                </td>
                                <td>
                                    <%
                                        out.println(balance);
                                    %>
                                </td>
                            </tr>
                            <%
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
            <div>
                <a href="clearbalance.jsp" class="btn btn-info text-light">Clear Balance</a>
                <a href="#" class="btn btn-danger text-light">Check out</a>
            </div>
        </div>
        <%   } catch (Exception e) {
                out.print(e);
            }
        %>
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
