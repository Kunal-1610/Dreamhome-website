<%-- 
    Document   : save_amenities
    Created on : 28 Jul, 2023, 8:13:26 PM
    Author     : Kunal Katira
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
    if (isMultipart) {
        // Create a factory for disk-based file items
        DiskFileItemFactory factory = new DiskFileItemFactory();

        // Set the directory for temporary files
        File tempDir = (File) getServletContext().getAttribute("javax.servlet.context.tempdir");
        factory.setRepository(tempDir);

        // Create a new file upload handler
        ServletFileUpload upload = new ServletFileUpload(factory);

        try {
            // Parse the request
            List<FileItem> items = upload.parseRequest(request);
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/dreamhome?characterEncoding=latin1", "root", "");
            // Create a statement for the insert query

            int cid = (int) session.getAttribute("sid");
//            String cnm = session.getAttribute("snm").toString();

            String qr = "insert into asset_detail value(";
            Statement statement = con.createStatement();

            // Iterate over the file items
            Iterator<FileItem> iter = items.iterator();
            int k = 1;
            while (iter.hasNext()) {
                FileItem item = iter.next();

                // Check if the item is a form field or an uploaded file
                if (item.isFormField()) {
                    // Process the form field (text data)
                    String fieldName = item.getFieldName();
                    String fieldValue = item.getString();

                    // Print the text data
                    out.println("Field Name:  " + fieldName);
                    out.println("<br>Field Value:  " + fieldValue);
                    out.println("<hr>");

                    if (k <= 2) {
                        qr = qr + fieldValue + ",";
                    } else {
                        qr = qr + "'" + fieldValue + "',";
                    }
                    k++;
                } else {
                    // Process the uploaded file (image file)
                    String fieldName = item.getFieldName();
                    String fileName = item.getName();
                    if (fileName.length() > 0) {
                        // Save the file to a desired location
                        // File uploadedFile = new File("path/to/save/" + fileName);
                        //String v="d://satish/test/" + fileName;

                        ServletContext context = request.getServletContext();
                        String realpath = context.getRealPath("/" + cid + "/");
                        out.println("<br>PAth -->" + realpath);

//                String Tpath=realpath.replace("'\\'","'/'");
//                     out.println("<br>PAth -->"+Tpath);
                        qr = qr + "'" + cid + "/" + fileName + "')";    
                        out.println("<br>PAth -->" + qr);

                        //qr=qr+ fileName;
                        out.print("<br> <h1>" + qr + "<br></h1>");
                        File uploadedFile = new File(realpath + fileName);
                        //File uploadedFile = new File("d://satish/test/" + fileName);
                        item.write(uploadedFile);
                        out.println("File uploaded ok");
                        // You can perform further processing with the uploaded image file here
                        // ...
                    } else {
                        qr = qr + "'no')";
                    }
                }

            }
            out.println("<BR> Query " + qr);
            int r = statement.executeUpdate(qr);

            if (r > 0) {
                out.println("<h1> Upload <h1>");
                request.getRequestDispatcher("/profile.jsp").forward(request, response);

                ResultSet rs = statement.executeQuery("Select * from asset_master");
                out.println("<table border=1>");
                while (rs.next()) {

                    out.print("<tr><td>" + rs.getInt(1));
                    out.print("<td>" + rs.getString(2));
                    out.print("<td>" + rs.getString(3));
                    out.print("<td><img width=100 height =100 src=" + rs.getString(10) + ">");
                    //  out.println("iame of<img src="+realpath+fileName+">");
                    //  out.println("<img src=\"path/to/save/" + fileName + "\" alt=\"Uploaded Image\">");
                }
            } else {
                out.println("Sorry");
            }
            con.close();
        } catch (Exception e) {
            out.println("error -->" + e);
        }
    } else {
        out.println("not entererddd");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    </body>
</html>
