<%-- 
    Document   : log_out
    Created on : 2 Aug, 2023, 7:02:06 PM
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
        <%
            session.setAttribute("sid", null);
             session.setAttribute("snm", null);
             session.setAttribute("sunm", null);
             session.setAttribute("seml", null);
             session.setAttribute("smob", null);
             session.invalidate();
            response.sendRedirect("dash.jsp");
            %>
    </body>
</html>
