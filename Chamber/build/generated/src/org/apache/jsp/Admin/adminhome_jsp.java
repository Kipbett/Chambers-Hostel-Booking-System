package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class adminhome_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Welcome Admin Home</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            response.setHeader("Cache-Control", "no-cahe, no-store, must-revalidate");
            if (session.getAttribute("admin_email") == null) {
                response.sendRedirect("adminlogin.jsp");
            }
        
      out.write("\n");
      out.write("        <nav class=\"navbar fix-top navbar-light bg-dark\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <h2 class=\"navbar-brand\">\n");
      out.write("                    <a href=\"#\">Chambers Hub</a>\n");
      out.write("                </h2>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("        <div>&nbsp;</div>\n");
      out.write("        <div class=\"container-fluid bg-light\">\n");
      out.write("            <p class=\"container text-right\">\n");
      out.write("                ");

                    String admin_email = (String) session.getAttribute("admin_email");
                
      out.write("\n");
      out.write("                Logged in as ");
      out.print(admin_email);
      out.write("\n");
      out.write("            </p>\n");
      out.write("        </div>\n");
      out.write("        <div>&nbsp;</div>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <ul class=\"nav nav-tabs btn-group btn-default nav-justified\">\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link\" data-toggle=\"tab\" href=\"#customer_balance\">Customer Balance</a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link\" data-toggle=\"tab\" href=\"#update_rooms\">Update Rooms</a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link\" data-toggle=\"tab\" href=\"#customer_details\">Customer Details</a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link\" data-toggle=\"tab\" href=\"#delete_record\">Delete Record</a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link\" data-toggle=\"tab\" href=\"#confirm_payment\">Confirm Payments</a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"adminlogout.jsp\" class=\"nav-link\">Log Out</a>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"tab-content\">\n");
      out.write("            <div class=\"tab-pane container active\" id=\"customer_balance\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div>&nbsp;</div>\n");
      out.write("                    <div class=\"text-center\">\n");
      out.write("                        <p class=\"display-4\">\n");
      out.write("                            <b>Customer Balance</b>\n");
      out.write("                        </p>\n");
      out.write("                    </div>\n");
      out.write("                    <div>&nbsp;</div>\n");
      out.write("                    <table class=\"table table-bordered table-hover\">\n");
      out.write("                        <thead>\n");
      out.write("                            <tr>\n");
      out.write("                                <td><b>Tenants' Email</b></td>\n");
      out.write("                                <td><b>Tenants' Room</b></td>\n");
      out.write("                                <td><b>Total Amount Paid</b></td>\n");
      out.write("                                <td><b>Remaining Balance</b></td>\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        <tbody>\n");
      out.write("                            ");

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
                            
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("                                <td>");
      out.print(email);
      out.write("</td>\n");
      out.write("                                <td>");
      out.print(room_name);
      out.write("</td>\n");
      out.write("                                <td>");
      out.print(amount_paid);
      out.write("</td>\n");
      out.write("                                <td>");
      out.print(balance);
      out.write("</td>\n");
      out.write("                            </tr>\n");
      out.write("                            ");

                                    }

                                } catch (Exception e) {
                                    out.println(e);
                                }
                            
      out.write("\n");
      out.write("\n");
      out.write("                        </tbody>\n");
      out.write("                    </table>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"tab-pane container fade\" id=\"update_rooms\">\n");
      out.write("                <div class=\"text-center display-4\">\n");
      out.write("                    <p>\n");
      out.write("                        <b>Update Rooms</b>\n");
      out.write("                    </p>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"tab-pane container fade\" id=\"customer_details\">\n");
      out.write("                <div>&nbsp;</div>\n");
      out.write("                <div class=\"text-center\">\n");
      out.write("                    <p class=\"display-4\">\n");
      out.write("                        <b>All tenants</b>\n");
      out.write("                    </p>\n");
      out.write("                </div>\n");
      out.write("                <div>&nbsp;</div>\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <table class=\"table table-bordered table-stripped table-hover\">\n");
      out.write("                        <thead>\n");
      out.write("                            <tr>\n");
      out.write("                                <td><b>First_name</b></td>\n");
      out.write("                                <td><b>Last Name</b></td>\n");
      out.write("                                <td><b>Email</b></td>\n");
      out.write("                                <td><b>Phone Number</b></td>\n");
      out.write("                                <td><b>Gender</b></td>\n");
      out.write("                                <td><b>Room Occupied</b></td>\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        ");

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

                        
      out.write("\n");
      out.write("                        <tbody>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    ");
      out.print(first_name);
      out.write("\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    ");
      out.print(last_name);
      out.write("\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    ");
      out.print(email);
      out.write("\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    ");
      out.print(phone_number);
      out.write("\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    ");
      out.print(gender);
      out.write("\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    ");
      out.print(room_name);
      out.write("\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("\n");
      out.write("                        </tbody>\n");
      out.write("                        ");
}
                            }
                        } catch (Exception e) {
                        
      out.write("\n");
      out.write("                        <div class=\"container text-center\">\n");
      out.write("                            <p>");
      out.print(e);
      out.write("</p>\n");
      out.write("                        </div>\n");
      out.write("                        ");

                            }
                        
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </table>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"tab-pane container fade\" id=\"delete_record\">\n");
      out.write("                <div>&nbsp;</div>\n");
      out.write("                <div class=\"text-center display-4\">\n");
      out.write("                    <p>\n");
      out.write("                        <b>Delete Customer Record</b>\n");
      out.write("                    </p>\n");
      out.write("                </div>\n");
      out.write("                <div>&nbsp;</div>\n");
      out.write("                <div class=\"container\">\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"tab-pane container fade\" id=\"confirm_payment\">\n");
      out.write("                <div class=\"text-center display-4\">\n");
      out.write("                    <p>\n");
      out.write("                        <b>Confirm Customer Payment</b>\n");
      out.write("                    </p>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <form method=\"post\" action=\"Confirm\">\n");
      out.write("                        <div class=\"form-group col-md-5 col-sm-12\">\n");
      out.write("                            <label>\n");
      out.write("                                Enter The Transaction Id\n");
      out.write("                            </label>\n");
      out.write("                            <div class=\"input-group\">\n");
      out.write("                                <input type=\"text\" name=\"atransaction_id\" class=\"form-control text-center\" placeholder=\"Transaction Id\" required=\"required\">\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group col-md-5 col-sm-12\">\n");
      out.write("                            <div class=\"input-group\">\n");
      out.write("                                <input type=\"submit\" name=\"confirm_payment\" class=\"btn btn-default\" value=\"Confirm Payment\">\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("                    <div class=\"nav nav-tabs btn-default\">\n");
      out.write("                        <div class=\"nav-item\">\n");
      out.write("                            <a href=\"#payment_details\" class=\"nav-link\" data-toggle=\"tab\">Check Booking Details</a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"tab-content\">\n");
      out.write("                    <div class=\"tab-pane container fade\" id=\"payment_details\">\n");
      out.write("                        <div class=\"container\">\n");
      out.write("                            <div class=\"display-4 text-center\">\n");
      out.write("                                <p>\n");
      out.write("                                    Payment Details\n");
      out.write("                                </p>\n");
      out.write("                            </div>\n");
      out.write("                            <table class=\"table table-bordered table-hover\">\n");
      out.write("                                <tbody>\n");
      out.write("                                \n");
      out.write("                                </tbody>\n");
      out.write("                            </table>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
