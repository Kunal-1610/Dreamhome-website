<%-- 
    Document   : view_asset
    Created on : 2 Aug, 2023, 7:23:41 PM
    Author     : Kunal Katira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Propert view</title>
        <link rel="website icon" type="png" href="img/logo.png">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;1,200&display=swap" rel="stylesheet">
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
        body {
            /*background-image: url(img/christian-koch-D_4R9CcYZOk-unsplash.jpg);*/
  background-image: linear-gradient(red, yellow);
            display: flex;
            font-size: 18px;
            display: flex;
            justify-content: center;
        }
        .container
        {
            margin-top:1%;
            position: absolute;
            /*background: rgb(128, 70, 34);*/
            background: white 0.8;
            max-width: 80%;
            max-height: 95%;
            border-radius: 2%;
        }
        
        .asset_item{
            max-width: 80%;
            max-height: 40%;
            margin:0 auto;
            display: grid;
            grid-template-columns: 35% 70%;
            gap: 10px;
            background: white;
            /*outline: .5px solid black;*/ 
            /*border-radius: 3%;*/
            box-shadow: 40px 66px 89px -50px ;
            overflow: hidden;



        }
        .item_img{  
            height: 35vh;
            border: 1px solid;
            width: 100%;
        }
        .item_img img{
            width:100%;
            height: 100%;
        }
        .item_desc{
            width: 91%;
            margin: 0;
            display: flex;
            justify-content: center;
            word-wrap: break-word;
            word-break: break-all;
            flex-direction: column;
        }
        .item_desc span{
        }
        .book
        {
            display: flex;
            justify-content: center;
        }
        .book a{
            width: 20%;
            margin: 5% auto;
                
        }
    </style>
    <body>
        <% String logv=request.getParameter("logv");
           String asid=request.getParameter("asid");%>
        
        <div class="container">
            <%@page import="java.sql.*" %>
 
            <%
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/dreamhome?characterEncoding=latin1", "root", "");
                    Statement st = con.createStatement();
                    String id = request.getParameter("asid");
                    //                        out.println(id);
                    ResultSet rs = st.executeQuery("Select * from asset_master where ass_id=" + id + " and ass_sellstat='NO'");
                    while (rs.next()) {%>
           <div class="asset_item">
                <div class="item_img"> <%out.println("<img src=" + rs.getString(10) + ">");%></div>
                <div class="item_desc">
                    <div><span><% out.println(rs.getString(3).toUpperCase());%></span></div>
                    <div><span><% out.println(rs.getString(4).toUpperCase()); %></span></div>
                    <div><span> <% out.println(rs.getString(5).toUpperCase());%></span></div>
                    <div><span><% out.println(rs.getString(6).toUpperCase());%></span></div>
                    <div> <span><% out.println(rs.getString(7).toUpperCase());%></span></div>
                </div>
           </div>
            <%
                Statement st2 = con.createStatement();
                ResultSet rs2 = st2.executeQuery("select * from asset_detail where ass_id=" + id + " order by ass_srno");
                    while (rs2.next()) {%>
                    <div class="asset_item">
                <div class="item_img"> 
                    <%
                        if (!rs2.getString(5).equals("no")) {
                            out.println("<img src=" + rs2.getString(5) + ">");
                        }
                    ;%>
                </div>
                <div class="item_desc">
                    <div><span><% out.println(rs2.getString(3).toUpperCase());%></span></div>
                    <div><span><%  out.println(rs2.getString(4).toUpperCase()); %></span></div>
                    <div><span> <% out.println(rs.getString(5).toUpperCase());%></span></div>
                </div>
            </div>
            <%}
            rs2.close();
            rs2=null;
            }
            con.close();
            } catch (Exception ex) {
            out.println(ex);
            }
%><div class="book">
    <a href="bookings.jsp?logv=<%=logv%>&asid=<%=asid%>" <button class="btn btn-dark">Book Now</button></a>
</div>
        </div>  
    </body>
</html>
