<%-- 
    Document   : signuplog
    Created on : 4 Jul, 2023, 7:18:53 PM
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
                    
         try{
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/dreamhome?characterEncoding=latin1","root","");
         Statement st = con.createStatement();
       
  
         String name=request.getParameter("name");
         String username=request.getParameter("username");
         String email=request.getParameter("email");
         String mobile=request.getParameter("mobile");
         String password=request.getParameter("password");
         String type=request.getParameter("btnradio");
         String forgotQue=request.getParameter("forgotQue");
         String forgotAns=request.getParameter("forgotAns");
         
                

         String q="insert into client_master values(null,'"+name+"','"+username+"','"+email+"','"+mobile+"','"+password+"','"+type+"','"+forgotQue+"','"+forgotAns+"')";
         st.executeUpdate(q);
//         response.sendRedirect("dashboard.jsp");
            request.getRequestDispatcher("/login.jsp").forward(request,response);
            con.close();
    }
         catch(Exception e)
    {
        out.println(e);
}
%>    </body>
</html>
