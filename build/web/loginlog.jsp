<%-- 
    Document   : loginlog
    Created on : 4 Jul, 2023, 7:19:31 PM
    Author     : Kunal Katira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="sweetalert2/dist/sweetalert2.min.js"></script>

        <title>JSP Page</title>
     
        
    </head>
    <body>
         <%@page import="java.sql.*" %>
     <%
         try
       {
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/dreamhome?characterEncoding=latin1","root","");
         Statement st = con.createStatement();
          
         String username=request.getParameter("username");
         String password=request.getParameter("password");
         
         String q="select * from client_master where (c_username='"+username+"'or c_email='"+username+"')and c_pass ='"+password+"'";
         ResultSet rs=st.executeQuery(q);
         if(rs.next())
         {
             int id=rs.getInt(1);
             String nm=rs.getString(2);
             String unm=rs.getString(3);
             String eml=rs.getString(4);
             String mob=rs.getString(5);
             session.setAttribute("sid", id);
             session.setAttribute("snm", nm);
             session.setAttribute("sunm", unm);
             session.setAttribute("seml", eml);
             session.setAttribute("smob", mob);
            response.sendRedirect("dash.jsp?logv="+id);
         }
         else
         {
             request.setAttribute("errorMessage", "Invalid user or password");
            request.getRequestDispatcher("/login.jsp").forward(request,response);
         }
            rs.close();
            con.close();
                    
    }
         catch(Exception e){
             out.println(e);
    }
         %>
    </body>
</html>
