package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class add_005famenities_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Add amenities</title>\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;1,200&display=swap\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM\" crossorigin=\"anonymous\">\n");
      out.write("    </head>\n");
      out.write("    <style>\n");
      out.write("         *{\n");
      out.write("            margin: 0px;\n");
      out.write("            padding: 0px;\n");
      out.write("            font-family: \"poppins\",serif;\n");
      out.write("        }\n");
      out.write("        body {\n");
      out.write("        display: flex;\n");
      out.write("        flex-wrap: wrap;\n");
      out.write("        font-family: sans-serif;\n");
      out.write("        }\n");
      out.write("     .parent{\n");
      out.write("            display: flex;\n");
      out.write("            background: url(img/logi.jpg);\n");
      out.write("            background-size: 100vw 150vh;\n");
      out.write("            background-repeat: no-repeat;\n");
      out.write("            height:100vh;\n");
      out.write("            width: 100vw;\n");
      out.write("            \n");
      out.write("            justify-content: center;\n");
      out.write("            align-items: center;\n");
      out.write("            \n");
      out.write("            }   \n");
      out.write("    .child {\n");
      out.write("        background:white ;\n");
      out.write("        display: flex;\n");
      out.write("         padding: 110px;\n");
      out.write("        height: 600px;\n");
      out.write("          opacity: 0.8;\n");
      out.write("        justify-content: center;\n");
      out.write("        width: 500px;\n");
      out.write("    }\n");
      out.write("    input\n");
      out.write("    {\n");
      out.write("       margin: 10px auto;\n");
      out.write("    }\n");
      out.write("    .child input[type=\"text\"],\n");
      out.write("    .child input[type=\"password\"],\n");
      out.write("    .child input[type=\"radio\"],\n");
      out.write("    .child input[type=\"email\"]\n");
      out.write("    {\n");
      out.write("        background: transparent;\n");
      out.write("        border: none;\n");
      out.write("        border-bottom: 1px solid #0275d8;\n");
      out.write("        outline: none;\n");
      out.write("        width: 300px;\n");
      out.write("        margin-top: 20px;\n");
      out.write("/*        padding: 10px;   */\n");
      out.write("        color: #0275d8;\n");
      out.write("        \n");
      out.write("    }\n");
      out.write("    .child input[type=\"submit\"]\n");
      out.write("     {\n");
      out.write("            border-radius: 10px;\n");
      out.write("            width: 100px;\n");
      out.write("            margin-left: 200px;\n");
      out.write("            margin-bottom: 0px;\n");
      out.write("     }\n");
      out.write("    label,\n");
      out.write("    .child input[type=\"radio\"]\n");
      out.write("    {\n");
      out.write("        height: 35px; \n");
      out.write("        margin-top: 10px;\n");
      out.write("        margin-left: 10px;\n");
      out.write("        align-content: center;    \n");
      out.write("       \n");
      out.write("    }\n");
      out.write("\n");
      out.write("     a\n");
      out.write("     {\n");
      out.write("         text-decoration: none;\n");
      out.write("         color: #0275d8;\n");
      out.write("        font-size: 14px;\n");
      out.write("         }\n");
      out.write("  .logo\n");
      out.write("     {\n");
      out.write("         height:40px;\n");
      out.write("         margin-top:-110px ;\n");
      out.write("         margin-left:125px;\n");
      out.write("         \n");
      out.write("     }\n");
      out.write("    .child .login\n");
      out.write("     {\n");
      out.write("            display: flex;\n");
      out.write("           border-radius: 10px;\n");
      out.write("            margin-left: 15%;\n");
      out.write("            margin-top: 30px;\n");
      out.write("     }\n");
      out.write("   \n");
      out.write("       /*background: linear-gradient(170deg,#252725,#265265);*/\n");
      out.write("\n");
      out.write("    </style>\n");
      out.write("    <body>\n");
      out.write("         \n");
      out.write("        ");

            int srno=0;
            String ass_id=request.getParameter("asid");
            try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/dreamhome?characterEncoding=latin1", "root", "");
                        Statement st = con.createStatement();

                        ResultSet rs = st.executeQuery("Select * from asset_detail where ass_id="+ass_id+" order by ass_srno");
                        while(rs.next())
                        {
                            srno=rs.getInt(2);
                        }
                        srno++;
                        rs.close();
            }
            catch(Exception e){
                out.println(e);
            }
            
      out.write("\n");
      out.write("            <div class=\"parent\">\n");
      out.write("                <div class=\"child\">\n");
      out.write("                    \n");
      out.write("            <form action=\"save_amenities.jsp\" enctype=\"multipart/form-data\" method=\"post\">\n");
      out.write("                \n");
      out.write("             <input type=\"hidden\" value=\"");
      out.print(ass_id);
      out.write("\" name=\"ass_id\">\n");
      out.write("             <div class=\"formdata\"> aminities : <input type=\"text\" value=\"");
      out.print( srno);
      out.write("\" name=\"ass_srno\" readonly></div>\n");
      out.write("            <div class=\"formdata\"><input type=\"text\" placeholder=\"asset title\" name=\"ass_title\"></div>\n");
      out.write("            <div class=\"formdata\"><textarea placeholder=\"asset desc\" name=\"ass_desc\"></textarea></div>\n");
      out.write("            <div class=\"formdata\"><input type=\"file\" name=\"file\"></div>\n");
      out.write("            <div class=\"formdata\"><input type=\"submit\"></div>\n");
      out.write("            \n");
      out.write("        </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
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
