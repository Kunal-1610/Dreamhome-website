package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class forgotpass_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link rel=\"website icon\" type=\"png\" href=\"img/logo.png\">\n");
      out.write("        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM\" crossorigin=\"anonymous\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;1,200&display=swap\" rel=\"stylesheet\">\n");
      out.write("        <title>Forgot Password</title>\n");
      out.write("    </head>\n");
      out.write("    <style>\n");
      out.write("        *{\n");
      out.write("            box-sizing: border-box;\n");
      out.write("            padding: 0;\n");
      out.write("            margin: 0;\n");
      out.write("            font-family: \"poppins\", serif;\n");
      out.write("        }\n");
      out.write("        html {\n");
      out.write("            scroll-behavior: smooth;\n");
      out.write("        }\n");
      out.write("        body{\n");
      out.write("            background-image:url(img/alexandra-gorn-JIUjvqe2ZHg-unsplash.jpg);\n");
      out.write("            background-size: cover;\n");
      out.write("            background-repeat: no-repeat;\n");
      out.write("        }\n");
      out.write("        .parent{\n");
      out.write("           width: 100vw;\n");
      out.write("           height: 100vh;\n");
      out.write("          display: flex;\n");
      out.write("          justify-content: center;\n");
      out.write("          align-items: center;\n");
      out.write("        }\n");
      out.write("        .child{\n");
      out.write("            display: flex;\n");
      out.write("            justify-content: center;\n");
      out.write("            align-items: center;\n");
      out.write("            flex-direction: column;\n");
      out.write("          margin-bottom: 10%;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        input[type=\"text\"]{\n");
      out.write("            background: transparent;\n");
      out.write("            border: none;\n");
      out.write("            border-bottom: 1px solid;\n");
      out.write("            outline: none;\n");
      out.write("            margin: 10% auto;\n");
      out.write("            width: 100%;\n");
      out.write("            height: 20%;\n");
      out.write("        }\n");
      out.write("        div{\n");
      out.write("                        display: flex;\n");
      out.write("            justify-content: center;\n");
      out.write("        }\n");
      out.write("        .btn{\n");
      out.write("            width: 50%;\n");
      out.write("\n");
      out.write("        }\n");
      out.write("        </style>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"parent\">\n");
      out.write("            <div class=\"child\">\n");
      out.write("                             <form action=\"forgotpass2.jsp\" method=\"post\">\n");
      out.write("\n");
      out.write("                <div class=\"head\"> <h2>Confirm your identity</h2></div>\n");
      out.write("            <div> <input type=\"text\" name=\"unm\" placeholder=\"Username/email\"></div>\n");
      out.write("            <div> <input type=\"submit\" value=\"Check\" class=\"btn btn-outline-dark\"></div>\n");
      out.write("                \n");
      out.write("                        </form>\n");
      out.write("\n");
      out.write("            </div>\n");
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
