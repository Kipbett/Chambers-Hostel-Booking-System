package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminlogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Admin Login</title><link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\"></script>\n");
      out.write("        <style>\n");
      out.write("            form{\n");
      out.write("                padding: 10px;\n");
      out.write("                border: solid black;\n");
      out.write("                border-radius: 2mm;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <nav class=\"navbar fix-top navbar-light bg-dark\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <h2 class=\"navbar-brand\">\n");
      out.write("                    <a href=\"#\">Chambers Hub</a>\n");
      out.write("                </h2>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("        <div class=\"intro\">\n");
      out.write("            <div class=\"container text-center\">\n");
      out.write("                <p class=\"display-4\">\n");
      out.write("                    Admin Login\n");
      out.write("                </p>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div class=\"container col-md-5 col-sm-12\">\n");
      out.write("            <form method=\"post\" action=\"AdminLogin\">\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label>\n");
      out.write("                        Email\n");
      out.write("                    </label>\n");
      out.write("                    <div class=\"input-group\">\n");
      out.write("                        <input type=\"email\" name=\"email\" required=\"required\" class=\"form-control text-center\" placeholder=\"example@gmail.com\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label>\n");
      out.write("                        Password\n");
      out.write("                    </label>\n");
      out.write("                    <div class=\"input-group\">\n");
      out.write("                        <input type=\"password\" name=\"pass\" placeholder=\"*********\" class=\"form-control text-center\" required=\"required\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <div class=\"input-group\">\n");
      out.write("                        <input type=\"submit\" name=\"submit\" value=\"Log In\" class=\"btn btn-primary btn-block\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <p class=\"text-center text-primary\">\n");
      out.write("                <a href=\"#\">\n");
      out.write("                    Forgot Password?\n");
      out.write("                </a>\n");
      out.write("            </p>\n");
      out.write("            <p class=\"text-center text-primary\">\n");
      out.write("                <a href=\"#\">\n");
      out.write("                    Do not have an account?\n");
      out.write("                </a>\n");
      out.write("            </p>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
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
