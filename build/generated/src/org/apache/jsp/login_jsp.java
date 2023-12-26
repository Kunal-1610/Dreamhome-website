package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;1,200&display=swap\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM\" crossorigin=\"anonymous\">\n");
      out.write("        <!--        <link rel=\"stylesheet\" href=\"path/to/font-awesome/css/font-awesome.min.css\">-->\n");
      out.write("\n");
      out.write("        <title>Login</title>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <style>\n");
      out.write("        *{\n");
      out.write("            margin: 0px;\n");
      out.write("            padding: 0px;\n");
      out.write("            font-family: \"poppins\", serif;\n");
      out.write("        }\n");
      out.write("        body {\n");
      out.write("            display: flex;\n");
      out.write("            font-family: sans-serif;\n");
      out.write("        }\n");
      out.write("        .parent{\n");
      out.write("            display: flex;\n");
      out.write("            background: url(img/alexandra-gorn-JIUjvqe2ZHg-unsplash.jpg);\n");
      out.write("            /*background: black;*/\n");
      out.write("            background-size: 100vw 150vh;\n");
      out.write("            background-repeat: no-repeat;\n");
      out.write("            height:100vh;\n");
      out.write("            box-sizing: border-box; \n");
      out.write("            /*filter: blur(1px);*/\n");
      out.write("            width: 100vw;\n");
      out.write("            justify-content: center;\n");
      out.write("            align-items: center;\n");
      out.write("\n");
      out.write("        }   \n");
      out.write("        .child {\n");
      out.write("            background: rgba( 255, 255, 254, 0.25 );\n");
      out.write("            box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );\n");
      out.write("            backdrop-filter: blur( 4px );\n");
      out.write("            -webkit-backdrop-filter: blur( 4px );\n");
      out.write("            border-radius: 10px;\n");
      out.write("            border: 1px solid rgba( 255, 255, 255, 0.18 );\n");
      out.write("            /*background: ;*/\n");
      out.write("            display: flex;\n");
      out.write("            padding: 150px 40px;\n");
      out.write("            box-sizing: border-box;\n");
      out.write("            height: 450px;\n");
      out.write("            opacity: 0.9;\n");
      out.write("            justify-content: center;\n");
      out.write("            width: 500px;\n");
      out.write("            border: 1px solid;\n");
      out.write("            border-radius: 5%;\n");
      out.write("            margin-bottom: 10%;\n");
      out.write("        }\n");
      out.write("        input\n");
      out.write("        {\n");
      out.write("            margin: 10px auto;\n");
      out.write("\n");
      out.write("        }\n");
      out.write("        .child input[type=\"text\"],\n");
      out.write("        .child input[type=\"password\"]\n");
      out.write("        {\n");
      out.write("            background: transparent;\n");
      out.write("            border: none;\n");
      out.write("            border-bottom: 1px solid #0275d8;\n");
      out.write("            outline: none;\n");
      out.write("            width: 300px;\n");
      out.write("            margin-top: 20px;\n");
      out.write("            /*        padding: 10px;   */\n");
      out.write("            color: #0275d8;\n");
      out.write("\n");
      out.write("        }\n");
      out.write("        .child input[type=\"submit\"]\n");
      out.write("        {\n");
      out.write("            border-radius: 20px;\n");
      out.write("            width: 200px;\n");
      out.write("            margin-left: 50px;\n");
      out.write("            margin-top: 10px;\n");
      out.write("\n");
      out.write("        }\n");
      out.write("        .forgot\n");
      out.write("        {\n");
      out.write("            display: flex;\n");
      out.write("            color: #0275d8;\n");
      out.write("            padding: 10px;\n");
      out.write("            justify-content: space-between;\n");
      out.write("\n");
      out.write("        }\n");
      out.write("        a{\n");
      out.write("            text-decoration: none;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .icone img\n");
      out.write("        {\n");
      out.write("            height:50px;\n");
      out.write("            margin-top:-500px;\n");
      out.write("            margin-left: 120px;\n");
      out.write("        }\n");
      out.write("        span{\n");
      out.write("            color: transparent;\n");
      out.write("            margin-left: 60px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("    </style>\n");
      out.write("    <body>  \n");
      out.write("        <div class=\"parent\">\n");
      out.write("\n");
      out.write("            <div class=\"child\">\n");
      out.write("                <form action=\"loginlog.jsp\" method=\"POST\">\n");
      out.write("                    <!--<input type=\"hidden\" >-->\n");
      out.write("                    <input type=\"text\" class=\"username w-13\" placeholder=\"Username/e-mail\" name=\"username\" required><br>\n");
      out.write("                    <input type=\"password\" class=\"password\" placeholder=\"password\" name=\"password\" required minlength=\"6\"> <br>\n");
      out.write("                    <input type=\"submit\" class=\"btn btn-outline-primary btn\" value=\"Login\" onclick=\"\">\n");
      out.write("                    <div class=\"icone\">\n");
      out.write("                        <img src=\"img\\logi.png\" >\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"forgot\">\n");
      out.write("                        <a href=\"forgotpass.jsp\">Forgot password?</a>\n");
      out.write("                        <a href=\"signup.jsp\"class=\"signup\">Sign in</a>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        \n");
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
