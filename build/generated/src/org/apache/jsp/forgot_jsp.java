package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class forgot_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("                <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM\" crossorigin=\"anonymous\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;1,200&display=swap\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("  <style>\n");
      out.write("        *{\n");
      out.write("            margin: 0px;\n");
      out.write("            padding: 0px;\n");
      out.write("        }\n");
      out.write("        body {\n");
      out.write("        display: flex;\n");
      out.write("        font-family: sans-serif;\n");
      out.write("        }\n");
      out.write("     .parent{\n");
      out.write("            display: flex;\n");
      out.write("            background: url(img/id-interiors-VWt1BBQwwtU-unsplash.jpg);\n");
      out.write("            background-size: 100vw 150vh;\n");
      out.write("            background-repeat: no-repeat;\n");
      out.write("            height:100vh;\n");
      out.write("            box-sizing: border-box; \n");
      out.write("            width: 100vw;\n");
      out.write("            justify-content: center;\n");
      out.write("            align-items: center;\n");
      out.write("            \n");
      out.write("            }   \n");
      out.write("    .child {\n");
      out.write("        background: black;\n");
      out.write("        display: flex;\n");
      out.write("         box-sizing: border-box;\n");
      out.write("        height: 550px;\n");
      out.write("          opacity: 0.9;\n");
      out.write("        justify-content: center;\n");
      out.write("        width: 500px;\n");
      out.write("    }\n");
      out.write("   .child h1{\n");
      out.write("       display: flex;\n");
      out.write("       justify-content: center;\n");
      out.write("       margin-top: 10px;\n");
      out.write("color:#0d6efd;\n");
      out.write("       box-sizing: border-box;\n");
      out.write("    }\n");
      out.write("    .child p{\n");
      out.write("        justify-content: center;\n");
      out.write("        align-items: center;\n");
      out.write("        margin: 50px;\n");
      out.write("        color: #0d6efd;\n");
      out.write("            \n");
      out.write("       \n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    \n");
      out.write("   \n");
      out.write("    \n");
      out.write("select\n");
      out.write("{\n");
      out.write("    margin-left: 50px;\n");
      out.write("    width: 400px;\n");
      out.write("}\n");
      out.write(".child input[type=\"text\"]\n");
      out.write("    {\n");
      out.write("        background: transparent;\n");
      out.write("        border: none;\n");
      out.write("        border-bottom: 1px solid #0275d8;\n");
      out.write("        outline: none;\n");
      out.write("        margin-left: 50px;\n");
      out.write("        margin-top: 20px;\n");
      out.write("        width: 400px;        \n");
      out.write("/*        padding: 10px;   */\n");
      out.write("        color: white;\n");
      out.write("    }\n");
      out.write("    .child input[type=\"submit\"]\n");
      out.write("     {\n");
      out.write("            border-radius: 20px;\n");
      out.write("            width: 200px;\n");
      out.write("            margin-left: 50px;\n");
      out.write("            margin-top: 40px;\n");
      out.write("            \n");
      out.write("     }\n");
      out.write("     \n");
      out.write("    </style>\n");
      out.write("    <body>\n");
      out.write("           <div class=\"parent\">\n");
      out.write("\n");
      out.write("        <div class=\"child\">\n");
      out.write("            <div class=\"heading\">\n");
      out.write("                <form action=\"signuplog.jsp\" method=\"post\" >\n");
      out.write("                           <h1>Forgot password detail</h1>\n");
      out.write("                           <p> Select question from the list and provide appropriate answer.<br><br>\n");
      out.write("                               Remember the answer if you forgot the password this answer will required.</p>\n");
      out.write("                           ");
   String name=request.getParameter("name");
                              String username=request.getParameter("username");
                           String email=request.getParameter("email");
                           String mobile=request.getParameter("mobile");
                           String password=request.getParameter("password");
                            String type=request.getParameter("btnradio");
                           
      out.write("\n");
      out.write("                           \n");
      out.write("                           <input type=\"hidden\" name=\"name\" value=\"");
      out.print( name);
      out.write("\">\n");
      out.write("                           <input type=\"hidden\" name=\"username\" value=\"");
      out.print( username);
      out.write("\">\n");
      out.write("                           <input type=\"hidden\" name=\"email\" value=\"");
      out.print( email);
      out.write("\">\n");
      out.write("                           <input type=\"hidden\" name=\"mobile\" value=\"");
      out.print( mobile);
      out.write("\">\n");
      out.write("                           <input type=\"hidden\" name=\"password\" value=\"");
      out.print( password);
      out.write("\">\n");
      out.write("                           <input type=\"hidden\" name=\"btnradio\" value=\"");
      out.print( type);
      out.write("\">\n");
      out.write("                           <select name=\"forgotQue\" required>\n");
      out.write("                                \n");
      out.write("                               <option value=\"\" disabled selected hidden>choose your questtion</option>\n");
      out.write("                               <option>what was the name of your first school name?</option>\n");
      out.write("                               <option>what was your childhood best friend name?</option>\n");
      out.write("                               <option>what was your childhood nick name?</option>\n");
      out.write("                           </select>\n");
      out.write("                        <input type=\"text\"  placeholder=\"your answer\" name=\"forgotAns\" required><br>\n");
      out.write("                        <input type=\"submit\" class=\"btn btn-outline-primary btn\" value=\"Sign in\">\n");
      out.write("                </form>\n");
      out.write("            </div>      \n");
      out.write("        </div>\n");
      out.write("     </div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("         \n");
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
