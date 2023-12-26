<%-- 
    Document   : forgotpass3
    Created on : 9 Aug, 2023, 5:17:07 PM
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
        <form method="post">
        <%@page import="java.sql.*" %>

        <%
            String unm=request.getParameter("unm");
            String ans=request.getParameter("forgot_ans");
            try {
                    Class.forName("com.mysql.jdbc.Driver");
                Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/dreamhome?characterEncoding=latin1", "root", "");
                Statement st = con.createStatement();
                String an=request.getParameter("forgot_ans");
                ResultSet rs=st.executeQuery("select * from client_master where c_forgotAns='"+an+"'");
                if(rs.next()){
                    response.sendRedirect("forgotpass4.jsp?unm="+unm);
                }
                else{
                    out.println("incorrect");
                }
                }
            
                 catch (Exception e) {
                     out.println(e);
                }
            %>
        </form>
    </body>
</html>
