<%-- 
    Document   : fileupload2
    Created on : Jul 11, 2023, 10:23:31 AM
    Author     : sony
--%>
<%@page import="java.sql.*" %>

<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="org.apache.commons.fileupload.FileItem" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory" %>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>

<%
    // Check if the request is of type 'multipart/form-data'
    boolean isMultipart = ServletFileUpload.isMultipartContent(request);
out.println("kk");
    if (isMultipart)
    {
        // Create a factory for disk-based file items
        DiskFileItemFactory factory = new DiskFileItemFactory();
out.println("k2");

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
//                out.println("<br>PAth -->"+realpath);

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
            {                 
                
                String logv=request.getParameter("logv");
response.sendRedirect("dash.jsp?logv="+logv);
                
                }
            
        else{
                out.println("Sorry");
            }
           con.close();               

        } catch (Exception e) {
            out.println("error -->"+e);
        }
    }
%>
