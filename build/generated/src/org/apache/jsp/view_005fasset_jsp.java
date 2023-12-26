package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class view_005fasset_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Propert view</title>\n");
      out.write("        <link rel=\"website icon\" type=\"png\" href=\"img/logo.png\">\n");
      out.write("        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM\" crossorigin=\"anonymous\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;1,200&display=swap\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("    <style>\n");
      out.write("         *{\n");
      out.write("            box-sizing: border-box;\n");
      out.write("            padding: 0;\n");
      out.write("            margin: 0;\n");
      out.write("            font-family: \"poppins\", serif;\n");
      out.write("        }\n");
      out.write("        html {\n");
      out.write("            scroll-behavior: smooth;\n");
      out.write("        }\n");
      out.write("        body {\n");
      out.write("            background: #333333;\n");
      out.write("            display: flex;\n");
      out.write("            font-size: 18px;\n");
      out.write("        }\n");
      out.write("        .container\n");
      out.write("        {\n");
      out.write("            background: yellow;\n");
      out.write("            max-width: 80%;\n");
      out.write("            max-height: 100%;\n");
      out.write("           overflow: scroll;\n");
      out.write("\n");
      out.write("            \n");
      out.write("        }\n");
      out.write("        .asset_item{\n");
      out.write("            max-width: 80%;\n");
      out.write("            max-height: 40%;\n");
      out.write("            background: skyblue;\n");
      out.write("            display: grid;\n");
      out.write("            grid-template-columns: repeat(2, 1fr);\n");
      out.write("            gap: 10px;\n");
      out.write("            border:1px solid black; \n");
      out.write("            overflow: hidden;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("    <body>\n");
      out.write("                   \n");
      out.write("        <div class=\"container\">\n");
      out.write("        \n");
      out.write("\n");
      out.write("        ");
 
        try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/dreamhome?characterEncoding=latin1", "root", "");
                        Statement st = con.createStatement();
                        String id=request.getParameter("asid");
//                        out.println(id);
                        ResultSet rs = st.executeQuery("Select * from asset_master where ass_id="+id+" and ass_sellstat='NO'");
                        while(rs.next()){
      out.write("\n");
      out.write("                        <div class=\"asset_item\">\n");
      out.write("                            <div class=\"item_img\">1</div>\n");
      out.write("                            <div class=\"item_desc\">2</div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"asset_item\">\n");
      out.write("                            <div class=\"item_img\">1</div>\n");
      out.write("                            <div class=\"item_desc\">2</div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"asset_item\">\n");
      out.write("                            <div class=\"item_img\">1</div>\n");
      out.write("                            <div class=\"item_desc\">2</div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"asset_item\">\n");
      out.write("                            <div class=\"item_img\">1</div>\n");
      out.write("                            <div class=\"item_desc\">2</div>\n");
      out.write("                        </div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        ");

//                                                        out.println("<img src="+rs.getString(10)+">");
//
//                            out.println(rs.getString(2).toUpperCase());
//                            out.println(rs.getString(3).toUpperCase());
//                            out.println(rs.getString(4).toUpperCase());
//                            out.println(rs.getString(5).toUpperCase());
//                            out.println(rs.getString(6).toUpperCase());
//                            out.println(rs.getString(7).toUpperCase());
//                            
//                            Statement st2=con.createStatement();
//                            ResultSet rs2=st2.executeQuery("select * from asset_detail where ass_id="+id +" order by ass_srno");
//                            out.println("===================detail==================");
//                            while(rs2.next())
//                            {
//                            out.println(rs2.getString(3).toUpperCase());
//                            out.println(rs2.getString(4).toUpperCase());
//                            if(!rs2.getString(5).equals("no"))
//                            out.println("<img src="+rs2.getString(5)+">");
//                            }
//                            rs2.close();
//                            rs2=null;
                        }
                        
                        con.close();
        }
        catch(Exception ex){ out.println(ex);}
            
      out.write("\n");
      out.write("          </div>  \n");
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
