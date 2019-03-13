<%-- 
    Document   : booking
    Created on : Feb 26, 2019, 12:53:51 PM
    Author     : Brian
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Room</title>
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
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            if (session.getAttribute("email") == null) {
                response.sendRedirect("login.jsp");
            }
        %>
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
                    Book Hostel
                </p>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-12">
                    <ol class="list-group">
                        <b>Process To Book</b>
                        <li class="list-group-item">
                            <b>1.</b> View and select the room of your choice.
                        </li>
                        <li class="list-group-item">
                            <b>2.</b> Then Make payment for the room interested in.
                            <b>Note that all payments are made via M-PESA</b>
                        </li>
                        <li class="list-group-item">
                            <b>3.</b> Go to M-Pesa menu and select lipa na M-PESA 
                        </li>
                        <li class="list-group-item">
                            <b>4.</b> Select Pay Bill
                        </li>
                        <li class="list-group-item">
                            <b>5.</b> Enter business number. <b>123456</b>
                        </li>
                        <li class="list-group-item">
                            <b>6.</b> Enter account number. i.e Room Number e.g. <b>CHAMBER 1.</b>
                        </li>
                        <li class="list-group-item">
                            <b>7.</b> Enter the amount. <b>Initial Payment should not be less then 5000/=. The remaining balance should be paid within the first month of checking in</b>
                        </li>
                        <li class="list-group-item">
                            <b>8.</b> Enter the transaction number sent to you by M-PESA to confirm your payment and your payment will be confirmed via email within 24 Hours
                        </li>
                    </ol>
                </div>
                <div class="col-md-5 col-sm-12">
                    <div class="text-center text-info">
                        <h5>
                            Select Room and Make Payment
                        </h5>
                    </div>
                    <form method="post" action="confirmbooking.jsp">
                        <div class="form-group">
                            <label>
                                Room Type
                            </label>
                            <div class="input-group">
                                Single: <input type="radio" value="single" name="type" class="form-control">
                                Double: <input type="radio" value="double" double="double" name="type" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label>
                                Available Rooms
                            </label>
                            <div class="input-group">
                                <select class="form-control text-center" name="room_name">
                                    <%
                                        try {
                                            Class.forName("com.mysql.jdbc.Driver");
                                            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/chambers", "root", "");
                                            PreparedStatement pstmt = conn.prepareStatement("select * from rooms where room_status=?");
                                            pstmt.setString(1, "not_booked");
                                            ResultSet rs = pstmt.executeQuery();
                                            while (rs.next()) {
                                                String room_name = rs.getString("room_name");
                                    %>
                                    <option value="<%=room_name%>"><%=room_name%></option>
                                    <%
                                            }
                                        } catch (Exception e) {
                                            out.println(e);
                                        }
                                    %>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>
                                Transaction Id
                            </label>
                            <div class="input-group">
                                <input type="text" class="form-control text-center" placeholder="Transaction Id" name="transaction_id" required="required">
                            </div>
                        </div>
                                <div class="form-group">
                                    <label>
                                        Amount Paid
                                    </label>
                                    <div class="input-group">
                                        <input type="text" name="amount" class="form-control text-center" required="required" placeholder="Amount Paid">
                                    </div>
                                </div>
                        <div class="form-group">
                            <div class="input-group">
                                <input type="submit" name="submit" value="Submit" class="form-control btn btn-success"> 
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
