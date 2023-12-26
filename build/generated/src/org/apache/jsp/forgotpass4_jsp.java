package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class forgotpass4_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("               <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM\" crossorigin=\"anonymous\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;1,200&display=swap\" rel=\"stylesheet\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <script>\n");
      out.write("    function check(){\n");
      out.write("    const p1,p2;\n");
      out.write("    p1=document.f1.pass.value;\n");
      out.write("    p2=document.f1.cpass.value;\n");
      out.write("    if(p1 === p2)\n");
      out.write("    {\n");
      out.write("        return true\n");
      out.write("    }\n");
      out.write("    else{\n");
      out.write("        alert(\"Password mismatched\");\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("<style>     \n");
      out.write("*{\n");
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
      out.write("            flex-direction: column;\n");
      out.write("          margin-bottom: 15%;\n");
      out.write("          width: 30%;;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        input[type=\"text\"],\n");
      out.write("        input[type=\"password\"]{\n");
      out.write("            background: transparent;\n");
      out.write("            border: none;\n");
      out.write("            border-bottom: 1px solid;\n");
      out.write("            outline: none;\n");
      out.write("            margin:5% 0;\n");
      out.write("            width: 80%;\n");
      out.write("            height: 20%;\n");
      out.write("        }\n");
      out.write("        div{\n");
      out.write("            display: flex;\n");
      out.write("            justify-content: center;\n");
      out.write("        }\n");
      out.write("        .btn{\n");
      out.write("            width: 25%;\n");
      out.write("\n");
      out.write("        }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"parent\">\n");
      out.write("            <div class=\"child\">\n");
      out.write("                <form method=\"post\" name=\"f1\"action=\"update_pass.jsp\" onsubmit=\"return check()\">\n");
      out.write("            <div><h2>New password</h2></div>\n");
      out.write("            ");

                String unm = request.getParameter("unm");
            
      out.write("\n");
      out.write("            <div><input type=\"text\" value=\"");
      out.print(unm);
      out.write("\" readonly name=\"unm\"></div>\n");
      out.write("                <div><input type=\"password\" placeholder=\"Enter new password\" name=\"pass\"></div>\n");
      out.write("                <div> <input type=\"password\" placeholder=\"Confirm password\" name=\"cpass\"></div>\n");
      out.write("                <div> <input type=\"submit\" value=\"Confirm\" class=\"btn btn-outline-dark\"></div>\n");
      out.write("        </form>\n");
      out.write("            </div>\n");
      out.write("        </div>  \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
