package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ass_005fform_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;1,200&display=swap\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("        <title>Asset detail</title>\n");
      out.write("    </head>\n");
      out.write("    <style>\n");
      out.write("        *{\n");
      out.write("            margin: 0px;\n");
      out.write("            padding: 0px;\n");
      out.write("            font-family: 'poppins' ,serif;\n");
      out.write("\n");
      out.write("        }\n");
      out.write("        body{\n");
      out.write("            display: flex;\n");
      out.write("            color: lightgray;\n");
      out.write("            background: transparent;\n");
      out.write("            justify-content: center;\n");
      out.write("            background-image: url(\"img/id-interiors-VWt1BBQwwtU-unsplash.jpg\");\n");
      out.write("            background-size: cover;\n");
      out.write("            background-repeat: no-repeat;\n");
      out.write("\n");
      out.write("        }\n");
      out.write("        .child{\n");
      out.write("            opacity: 0.9;\n");
      out.write("            display: flex;\n");
      out.write("            background: black;\n");
      out.write("            /*background-image: linear-gradient( teal , burlywood);*/\n");
      out.write("            border-radius: 10px;\n");
      out.write("            box-shadow: 5px 5px 20px 1px ;\n");
      out.write("            height: 90vh;\n");
      out.write("            justify-content: center;\n");
      out.write("            align-items: center;\n");
      out.write("            margin-top: 40px;\n");
      out.write("            width: 60vw;\n");
      out.write("        }\n");
      out.write("        .child h2{\n");
      out.write("            margin-left: 200px;\n");
      out.write("            margin-bottom: 80px;\n");
      out.write("            margin-top: -100px;\n");
      out.write("        }\n");
      out.write("        input{margin-right: 20px;}\n");
      out.write("        .child input[type=\"text\"],\n");
      out.write("        .child input[type=\"number\"],\n");
      out.write("        textarea\n");
      out.write("        {\n");
      out.write("            margin: 20px 20px 20px 20px;\n");
      out.write("            width: 335px; \n");
      out.write("            color: white;\n");
      out.write("            border: 0px;\n");
      out.write("            border-bottom: 2px solid #0275d8;\n");
      out.write("            background: transparent;\n");
      out.write("            outline: none;      \n");
      out.write("            resize: none;    \n");
      out.write("        }\n");
      out.write("/*        .clearance{\n");
      out.write("            display: flex;\n");
      out.write("            justify-content: center;\n");
      out.write("            flex-direction: row;\n");
      out.write("            column-gap: 5%;\n");
      out.write("        }\n");
      out.write("        .data{\n");
      out.write("            position: relative;\n");
      out.write("            display: flex;\n");
      out.write("            column-gap: 1%;\n");
      out.write("        }*/\n");
      out.write("        h6{\n");
      out.write("            margin:10px 10px;\n");
      out.write("        }\n");
      out.write("        /*.radio{height: 100%;*/\n");
      out.write("                /*}*/\n");
      out.write("        .child input[type=\"submit\"]\n");
      out.write("        {\n");
      out.write("            border-radius: 10px;\n");
      out.write("            width: 200px;\n");
      out.write("            margin-left: 250px;\n");
      out.write("            margin-top: 50px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("\n");
      out.write("    </style>\n");
      out.write("        ");
 String logv=request.getParameter("logv");
      out.write("\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <div class=\"child\">\n");
      out.write("            <form method=\"POST\"  action=\"ass_master_logi.jsp?logv=");
      out.print(logv);
      out.write("\" enctype=\"multipart/form-data\">\n");
      out.write("                <h2>Your property detail</h2>\n");
      out.write("                <input type=\"text\" placeholder=\"Asset Name\" name=\"name\" required>\n");
      out.write("                <input type=\"text\" placeholder=\"Asset type\" name=\"type\" required><br>\n");
      out.write("                <textarea placeholder=\"Asset Description\"  rows=\"2\" cols=\"50\" name=\"desc\"required ></textarea>\n");
      out.write("                <textarea placeholder=\"Asset address\"  rows=\"2\" cols=\"50\" name=\"address\" required></textarea><br>\n");
      out.write("                <input type=\"text\" placeholder=\"Asset city\" name=\"city\" >\n");
      out.write("                       \n");
      out.write("                <input type=\"radio\" class=\"btn-check\" name=\"btnradio\" id=\"btnradio1\" value=\"yes\" autocomplete=\"off\" checked >\n");
      out.write("                        <label class=\"btn btn-outline-primary radio\" for=\"btnradio1\" >Yes</label>\n");
      out.write("\n");
      out.write("                        <input type=\"radio\" class=\"btn-check\" name=\"btnradio\" id=\"btnradio2\" value=\"no\" autocomplete=\"off\">\n");
      out.write("                        <label class=\"btn btn-outline-primary radio\" for=\"btnradio2\">No</label>\n");
      out.write("\n");
      out.write("                        <input type=\"radio\" class=\"btn-check\" name=\"btnradio\" id=\"btnradio3\" value=\"apply\" autocomplete=\"off\">\n");
      out.write("                        <label class=\"btn btn-outline-primary radio\" for=\"btnradio3\" required>Applied</label>\n");
      out.write("                    <br>\n");
      out.write("                <input type=\"number\" placeholder=\"Asset amount\" name=\"amt\"required > \n");
      out.write("                    <div class=\"file\"><input type=\"file\" name=\"upload\" multiple=\"false\" required></div>\n");
      out.write("                <input type=\"submit\" class=\"btn btn-outline-primary\" value=\"Save\">\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
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
