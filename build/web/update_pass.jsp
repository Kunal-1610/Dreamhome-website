<%-- 
    Document   : update_pass
    Created on : 10 Aug, 2023, 11:21:31 PM
    Author     : Kunal Katira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@page import="java.sql.*" %>

        <%
             try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/dreamhome?characterEncoding=latin1", "root", "");
                Statement st = con.createStatement();
                
                String unm=request.getParameter("unm");
                String pass=request.getParameter("pass");
                String q="update client_master set c_pass='"+pass+"' where c_username='"+unm+"' or c_email='"+unm+"'";
                int cnt=st.executeUpdate(q);
                response.sendRedirect("login.jsp");
       }
       catch(Exception e){
       out.println(e);
       }
       %>
    </body>
</html>
