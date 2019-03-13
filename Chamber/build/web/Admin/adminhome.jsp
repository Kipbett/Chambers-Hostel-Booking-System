<%-- 
    Document   : adminhome
    Created on : Mar 6, 2019, 8:26:35 AM
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
        <title>Welcome Admin Home</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%
            response.setHeader("Cache-Control", "no-cahe, no-store, must-revalidate");
            if (session.getAttribute("admin_email") == null) {
                response.sendRedirect("adminlogin.jsp");
            }
        %>
        <nav class="navbar fix-top navbar-light bg-dark">
            <div class="container">
                <h2 class="navbar-brand">
                    <a href="#">Chambers Hub</a>
                </h2>
            </div>
        </nav>
        <div>&nbsp;</div>
        <div class="container-fluid bg-light">
            <p class="container text-right">
                <%
                    String admin_email = (String) session.getAttribute("admin_email");
                %>
                Logged in as <%=admin_email%>
            </p>
        </div>
        <div>&nbsp;</div>
        <div class="container">
            <ul class="nav nav-tabs btn-group btn-default nav-justified">
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#customer_balance">Customer Balance</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#update_rooms">Update Rooms</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#customer_details">Customer Details</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#delete_record">Delete Record</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#confirm_payment">Confirm Payments</a>
                </li>
                <li>
                    <a href="adminlogout.jsp" class="nav-link">Log Out</a>
                </li>
            </ul>
        </div>

        <div class="tab-content">
            <div class="tab-pane container active" id="customer_balance">
                <div class="container">
                    <div>&nbsp;</div>
                    <div class="text-center">
                        <p class="display-4">
                            <b>Customer Balance</b>
                        </p>
                    </div>
                    <div>&nbsp;</div>
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <td><b>Tenants' Email</b></td>
                                <td><b>Tenants' Room</b></td>
                                <td><b>Total Amount Paid</b></td>
                                <td><b>Remaining Balance</b></td>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/chambers", "root", "");
                                    PreparedStatement pstmt = conn.prepareStatement("select * from payment");
                                    PreparedStatement stmt = conn.prepareStatement("select first_name, last_name from customers");
                                    ResultSet rs = pstmt.executeQuery();
                                    ResultSet r = stmt.executeQuery();
                                    while (rs.next()) {
                                        String email = rs.getString("email");
                                        String room_name = rs.getString("room_name");
                                        int amount_paid = rs.getInt("amount_paid");
                                        int balance = rs.getInt("balance");
                            %>
                            <tr>
                                <td><%=email%></td>
                                <td><%=room_name%></td>
                                <td><%=amount_paid%></td>
                                <td><%=balance%></td>
                            </tr>
                            <%
                                    }

                                } catch (Exception e) {
                                    out.println(e);
                                }
                            %>

                        </tbody>
                    </table>
                </div>
            </div>
            <div class="tab-pane container fade" id="update_rooms">
                <div class="text-center display-4">
                    <p>
                        <b>Update Rooms</b>
                    </p>
                </div>
                <div class="container">
                    
                </div>
            </div>
            <div class="tab-pane container fade" id="customer_details">
                <div>&nbsp;</div>
                <div class="text-center">
                    <p class="display-4">
                        <b>All tenants</b>
                    </p>
                </div>
                <div>&nbsp;</div>
                <div class="container">
                    <table class="table table-bordered table-stripped table-hover">
                        <thead>
                            <tr>
                                <td><b>First_name</b></td>
                                <td><b>Last Name</b></td>
                                <td><b>Email</b></td>
                                <td><b>Phone Number</b></td>
                                <td><b>Gender</b></td>
                                <td><b>Room Occupied</b></td>
                            </tr>
                        </thead>
                        <%
                            try {
                                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Chambers", "root", "");
                                PreparedStatement pstmt = conn.prepareStatement("select * from customers");
                                ResultSet rs = pstmt.executeQuery();
                                while (rs.next()) {
                                    String first_name = rs.getString("first_name");
                                    String last_name = rs.getString("last_name");
                                    String email = rs.getString("email");
                                    String phone_number = rs.getString("phone_number");
                                    String gender = rs.getString("gender");
                                    PreparedStatement stmt = conn.prepareStatement("select room_name from payment where email=?");
                                    stmt.setString(1, email);
                                    ResultSet r = stmt.executeQuery();
                                    if (r.next()) {
                                        String room_name = r.getString("room_name");

                        %>
                        <tbody>
                            <tr>
                                <td>
                                    <%=first_name%>
                                </td>
                                <td>
                                    <%=last_name%>
                                </td>
                                <td>
                                    <%=email%>
                                </td>
                                <td>
                                    <%=phone_number%>
                                </td>
                                <td>
                                    <%=gender%>
                                </td>
                                <td>
                                    <%=room_name%>
                                </td>
                            </tr>

                        </tbody>
                        <%}
                            }
                        } catch (Exception e) {
                        %>
                        <div class="container text-center">
                            <p><%=e%></p>
                        </div>
                        <%
                            }
                        %>


                    </table>
                </div>
            </div>
            <div class="tab-pane container fade" id="delete_record">
                <div>&nbsp;</div>
                <div class="text-center display-4">
                    <p>
                        <b>Delete Customer Record</b>
                    </p>
                </div>
                <div>&nbsp;</div>
                <div class="container">

                </div>
            </div>
            <div class="tab-pane container fade" id="confirm_payment">
                <div class="text-center display-4">
                    <p>
                        <b>Confirm Customer Payment</b>
                    </p>
                </div>
                <div class="container">
                    <form method="post" action="Confirm">
                        <div class="form-group col-md-5 col-sm-12">
                            <label>
                                Enter The Transaction Id
                            </label>
                            <div class="input-group">
                                <input type="text" name="atransaction_id" class="form-control text-center" placeholder="Transaction Id" required="required">
                            </div>
                        </div>
                        <div class="form-group col-md-5 col-sm-12">
                            <div class="input-group">
                                <input type="submit" name="confirm_payment" class="btn btn-default" value="Confirm Payment">
                            </div>
                        </div>
                    </form>
                    <div class="nav nav-tabs btn-default">
                        <div class="nav-item">
                            <a href="#payment_details" class="nav-link" data-toggle="tab">Check Booking Details</a>
                        </div>
                    </div>
                </div>
                <div class="tab-content">
                    <div class="tab-pane container fade" id="payment_details">
                        <div class="container">
                            <div class="display-4 text-center">
                                <p>
                                    Payment Details
                                </p>
                            </div>
                            <table class="table table-bordered table-hover">
                                <tbody>
                                
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
