package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;
import java.io.*;
import javax.servlet.http.*;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public final class ass_005fmaster_005flogi_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");

    // Check if the request is of type 'multipart/form-data'
    boolean isMultipart = ServletFileUpload.isMultipartContent(request);

    if (isMultipart)
    {
        // Create a factory for disk-based file items
        DiskFileItemFactory factory = new DiskFileItemFactory();

        // Set the directory for temporary files
        File tempDir = (File) getServletContext().getAttribute("javax.servlet.context.tempdir");
        factory.setRepository(tempDir);

        // Create a new file upload handler
        ServletFileUpload upload = new ServletFileUpload(factory);
           
        try 
        {
            // Parse the request
            List<FileItem> items = upload.parseRequest(request);
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/dreamhome?characterEncoding=latin1","root","");            String q="insert into file_upload values(null,";
            // Create a statement for the insert query
             int  cid=Integer.parseInt(session.getAttribute("sid").toString());
            //String cid="9";//(String)session.getAttribute("sid");
            String cnm=session.getAttribute("snm").toString();
            String qr="insert into asset_master value("+cid+",null,";
            Statement statement = con.createStatement();

            // Iterate over the file items
            Iterator<FileItem> iter = items.iterator();
            
            while (iter.hasNext()) {
                FileItem item = iter.next();
                   
                // Check if the item is a form field or an uploaded file
                if (item.isFormField()) 
                {
                    // Process the form field (text data)
                    String fieldName = item.getFieldName();
                    String fieldValue = item.getString();
                   
                    // Print the text data
                    out.println("Field Name:  " + fieldName);
                    out.println("<br>Field Value:  " + fieldValue);
                    out.println("<hr>");
                    
                    
                    qr=qr+"'"+fieldValue+"',";
                } else 
                {
                    // Process the uploaded file (image file)
                    String fieldName = item.getFieldName();
                    String fileName = item.getName();

                    // Save the file to a desired location
                   // File uploadedFile = new File("path/to/save/" + fileName);
                   //String v="d://satish/test/" + fileName;
                 
                  ServletContext context = request.getServletContext();
                String realpath = context.getRealPath("/"+cid+"/");
                out.println("<br>PAth -->"+realpath);

//                String Tpath=realpath.replace("'\\'","'/'");
//                     out.println("<br>PAth -->"+Tpath);
                 qr=qr+"'"+cid+"/"+fileName+"','NO')";
                                      out.println("<br>PAth -->"+qr);

                 //qr=qr+ fileName;
                 out.print("<br> <h1>"+qr+"<br></h1>");
                File uploadedFile = new File(realpath + fileName);
                  //File uploadedFile = new File("d://satish/test/" + fileName);
                    item.write(uploadedFile);
                    out.println("File uploaded ok");
                    // You can perform further processing with the uploaded image file here
                    // ...
                }
            }
            out.println("<BR> Query "+qr);
            int r=statement.executeUpdate(qr);
            
            if(r>0)
            {  out.println("<h1> Upload <h1>" );
            
                ResultSet rs=statement.executeQuery("Select * from asset_master");
                 out.println("<table border=1>");
                while(rs.next())
                {
                 
                  out.print("<tr><td>"+rs.getString(1));
                  out.print("<td>"+rs.getString(2));
                  out.print("<td>"+rs.getString(3));
                  out.print("<td><img width=100 height =100 src="+rs.getString(10)+">");
               //  out.println("iame of<img src="+realpath+fileName+">");
                    //  out.println("<img src=\"path/to/save/" + fileName + "\" alt=\"Uploaded Image\">");
            
                }
            }
            else
                out.println("Sorry");
           con.close();
        } catch (Exception e) {
            out.println("error "+e);
        }
    }

      out.write('\n');
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
