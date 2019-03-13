<%-- 
    Document   : clearbalance
    Created on : Mar 9, 2019, 3:34:51 AM
    Author     : Brian
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>clear balance</title>
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
        <div class="container">
            <div class="text-center">
                <p>
                    Make Your Payment For The Room Here
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 col-sm-12">
                <div class="container">
                    <form method="post" action="clearbalance.jsp">
                        <div class="form-group">
                            <label>
                                Enter Your Transaction ID.
                            </label>
                            <div class="input-group">
                                <input type="text" name="transaction_id" placeholder="Transaction ID" required="required" class="form-control text-center">
                            </div>
                        </div>
                        <div class="form-group">
                            <label>
                                Enter Amount
                            </label>
                            <div class="input-group">
                                <input type="text" name="amount" class="form-control text-center" placeholder="Amount" required="required">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <input type="submit" name="submit" value="Send" class=" col-3 btn btn-info text-light form-control">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <%
            String transaction_id = request.getParameter("transaction_id");
            String amount = request.getParameter("amount");
            String email = (String) session.getAttribute("email");
            String room_name;
            int state = 0;//Payment Not Confirmed
            //Calendar cal = Calendar.getInstance();
            Timestamp date = new Timestamp(new Date().getTime());

            try {
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/chambers", "root", "");
                PreparedStatement pstmt = conn.prepareStatement("select room_name, amount_paid from payment where email=?");
                pstmt.setString(1, email);
                ResultSet rs = pstmt.executeQuery();
                if (rs.next()) {
                    room_name = rs.getString("room_name");
                    PreparedStatement stmt1 = conn.prepareStatement("insert into transactions(transaction_id, email, room_name, amount, date_of_transaction, transaction_state) values(?,?,?,?,?,?)");
                    stmt1.setString(1, transaction_id);
                    stmt1.setString(2, email);
                    stmt1.setString(3, room_name);
                    stmt1.setString(4, amount);
                    stmt1.setTimestamp(5, date);
                    stmt1.setInt(6, state);
                    int count = stmt1.executeUpdate();
                    if (count > 0) {
        %>
        <div class="text-info">
            <p>Your Payment Has Been Received. Continue Enjoying Your Stay At Chambers Hub</p>
        </div>
        <%
            int amount_paid = rs.getInt("amount_paid");
            int total = Integer.parseInt(amount) + amount_paid;
            int balance = 24000 - total;
            PreparedStatement stmt2 = conn.prepareStatement("update payment set balance=?, amount_paid=? where email=?");
            stmt2.setInt(1, balance);
            stmt2.setInt(2, total);
            stmt2.setString(3, email);
            int count2 = stmt2.executeUpdate();
        } else {
        %>
        <div class="text-danger">
            <p>Sorry An Error Occurred During Your Payment. Please Try Making the Payment Again.</p>
        </div>
        <%
            }
        } else {
        %>
        <div class="text-danger">
            <p>Sorry You Have Not been Allocated Any Room. First Book a Room.</p>
        </div>
        <%
            }
        } catch (Exception e) {
        %>
        <div class="text-danger">
            <p><%=e%></p>
        </div>
        <%
            }
        %>
    </body>
</html>
