<%-- 
    Document   : forgotpass2
    Created on : 8 Aug, 2023, 7:29:42 PM
    Author     : Kunal Katira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
         <%@page import="java.sql.*" %>

        <%
       try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/dreamhome?characterEncoding=latin1", "root", "");
                Statement st = con.createStatement();

                String unm=request.getParameter("unm");
                String que=null;
                ResultSet rs=st.executeQuery("select * from client_master where (c_username='"+unm+"' or c_email='"+unm+"')");
                if(rs.next())
                {que =rs.getString(8).toString();%>
                
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="website icon" type="png" href="img/logo.png">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;1,200&display=swap" rel="stylesheet">
        <title>Forgot Password</title>
        <title>Forgot Password</title>
    </head>
    <style>
          *{
            box-sizing: border-box;
            padding: 0;
            margin: 0;
            font-family: "poppins", serif;
        }
        html {
            scroll-behavior: smooth;
        }
        body{
            background-image:url(img/alexandra-gorn-JIUjvqe2ZHg-unsplash.jpg);
            background-size: cover;
            background-repeat: no-repeat;
        }
        .parent{
           width: 100vw;
           height: 100vh;
          display: flex;
          justify-content: center;
          align-items: center;
        }
        .child{
            display: flex;
            justify-content: center;
            flex-direction: column;
          margin-bottom: 13%;
          width: 40%;;
        }
        
        input[type="text"]{
            background: transparent;
            border: none;
            border-bottom: 1px solid;
            outline: none;
            margin:2% 0;
            width: 80%;
            height: 20%;
        }
        div{
                        display: flex;
            justify-content: center;
        }
        .btn{
            width: 20%;

        }
      
    </style>
    <body>
        <div class="parent">
            <div class="child">
        <form action="forgotpass3.jsp" method="post">
            <div> <input type="text" value="<%=unm%>"name="unm" readonly></div>
            <div> <input type="text" value="<%=que%>"name="que" readonly></div>
               <div> <input type="text" placeholder="your answer" name="forgot_ans"></div>
               <div> <input type="submit" class="btn btn-outline-dark"></div>
        </form>
            </div>
        </div>
        <%}
else{
%>
<!--<div class="error">-->
    <img class="" src="img/Search-rafiki.png" width="">
<!--</div>-->
<%
}
           con.close(); } catch (Exception e) {
                out.println(e);
            }
        %>
        
    </body>
</html>
