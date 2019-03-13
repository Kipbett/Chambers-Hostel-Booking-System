<%-- 
    Document   : adminlogout
    Created on : Mar 11, 2019, 3:34:14 PM
    Author     : Brian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Logout</title>
    </head>
    <body>
        <%
            session.invalidate();
            response.sendRedirect("adminlogout.jsp");
        %>
    </body>
</html>
