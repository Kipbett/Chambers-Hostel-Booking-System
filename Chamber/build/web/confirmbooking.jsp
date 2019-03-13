<%-- 
    Document   : confirmbooking
    Created on : Mar 2, 2019, 12:34:46 PM
    Author     : Brian
--%>

<%@page import="java.sql.Timestamp"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm Booking</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
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

        <%
            String type = request.getParameter("type");
            String room_name = request.getParameter("room_name");
            String transaction_id = request.getParameter("transaction_id");
            String amount = request.getParameter("amount");
            int int_amount = Integer.parseInt(amount);
            int total_rent = 24000;
            int num_balance;
            num_balance = total_rent - int_amount;
            String balance = Integer.toString(num_balance);
            Calendar cal = Calendar.getInstance();
            Timestamp date = new Timestamp(new Date().getTime());
            String email = (String) session.getAttribute("email");
            int state = 0;
            String transaction_state = Integer.toString(state);
            try {
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/chambers", "root", "");
                PreparedStatement stmt = conn.prepareStatement("insert into transactions (transaction_id, email, room_name,amount, date_of_transaction, type, transaction_state) values(?,?,?,?,?,?,?)");
                stmt.setString(1, transaction_id);
                stmt.setString(2, email);
                stmt.setString(3, room_name);
                stmt.setString(4, amount);
                stmt.setTimestamp(5, date);
                stmt.setString(6, type);
                stmt.setString(7, transaction_state);
                int count = stmt.executeUpdate();
                if (count > 0) {
                    PreparedStatement stmt2 = conn.prepareStatement("update rooms set room_status=? where room_name=?");
                    stmt2.setString(1, "booked");
                    stmt2.setString(2, room_name);
                    stmt2.executeUpdate();
                    PreparedStatement pstmt = conn.prepareStatement("insert into payment (email, room_name, amount_paid, balance) values(?,?,?,?)");
                    pstmt.setString(1, email);
                    pstmt.setString(2, room_name);
                    pstmt.setString(3, amount);
                    pstmt.setString(4, balance);
                    pstmt.executeUpdate();
                }
        %>
        <div class="container">
            <p class="text-center, text-info alert-success display-4">
                Data Entered Successfully!
            </p>
        </div>
        <%
        } catch (Exception e) {
        %>
        <div class="container-fluid alert-danger">
            <div class="container text-danger text-center display-4">
                <%=e%>
            </div>

        </div>
        <%
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