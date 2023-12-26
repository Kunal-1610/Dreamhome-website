<%-- 
    Document   : search_result
    Created on : 15 Aug, 2023, 5:11:06 PM
    Author     : Kunal Katira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta 
            http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;1,200&display=swap" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <title>Your profile</title>
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
            font-family: 'poppins' ,sans-serif;
            font-size: 18px;
            background:whitesmoke ;
        }
        ul {
            list-style: none;
        }

        a{
            text-decoration: none;
            color: black;
        }

        .container{
            max-width: 1024px;
            margin-left: 1.5rem;
            margin-right: 1.5rem;
        }
        body,
        input,
        button
        {
            font-family: 'poppins' ,sans-serif ;
        }
        .header {
            display: flex;
            justify-content: space-between;
            padding-top: 30px;
            width: 100%;
            /*background: ;*/
            /*background: rgba(0, 0, 0 , 0.2) ; Green background with 30% opacity */

            transition: .4s;
            box-shadow: 10px 10px 14px 0px rgba(0,0,0,0.1);


        }
        .nav {
            height: 4.5rem;
            display: flex;           
            justify-content: space-between;
            background: transparent;
            align-items: center;
        }
        .logo
        {
            max-width: 100%;
            height: auto;
            margin-left: 2rem;
            margin-top: -20px;
            transition: .3s;
        }

        .menu{
            margin-left: auto;
        }
        .menu i{
            display: none;
        }

        .item span{
            color: #804622;
            transition: all .4s ease-out;
            font-weight: 600;
            position: relative;

        }
        .item span::before{
            content:'';
            position: absolute;
            width: 0;
            border-bottom: 3px solid #804622;
            border-radius: 40%;
            left: 0%;
            bottom: 0;
            transform: scaleX(0);
            transform-origin: right;
            transition: transform 0.3s ease-in-out;
        }
        .item span:hover::before{
            transform: scaleX(1);
            width: 100%;
            transform-origin: left;

        }
        .item:hover .active span:hover::before{
            transform: none;
        }
        .active span
        {
            border-bottom: 2px solid black;
            color: black;
        }

        .menu .list{
            display: flex;
            column-gap: 40px;

        }
        .login{
            margin: 10px auto;
            justify-content: space-around;
        }
        .btn{
            margin-left: 10px;
            /*background: #482723;*/
        }

        .btn-outline-dark:hover
        {
            background: #482723;
        }
        .btn2{
            background: #482723;
        }
        .user
        {
            display: flex;
            align-content:center;
            justify-content: center;
            background: #482723;
            color: white;
            padding: 2px ;
            margin-top: 10px;
            margin-right: 50px;
            height: 35px;
            width: 35px;
            font-size: 20px;
            font-weight: 600;
            text-decoration: none;
            border-radius: 50%;
            overflow: hidden;
        }

        .user_det{
            justify-content: center;
            padding:6px; 
            height: 300px;
            display: flex;
            column-gap: 5rem;
            align-items: center;
            color: #482723;
        }
        .user_data{
            margin-top: 30px;
            margin-bottom: 20px;
        }
        .section_asset{
        }


        section{
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
        }
        .title{
            display: flex;
            justify-content: center;
            margin-top: 40px;
        }
        .asset_container{
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 10px;
            /*background: linear-gradient(170deg,#252725,#265265);*/

            background:whitesmoke;
        }
        .asset_item{
            background: white;
            height:70vh;
            margin: 10% auto 0 auto;
            width: 30vw;
            border-radius: 10px;
            overflow: hidden;
            border: 1px solid;
            transition: .2s ease; 
        }
        .asset_item:hover {
            /*margin-top: 30px;*/
            transform: scale(1.03);
        }
        .asset_img{
            height:70%;
        }
        .asset_img img{
            height: 100%;
            width: 100%;
            border: 0px;
        }
        .asset_detail{
            display: flex;
            justify-content: space-around;
            margin-top: 30px;
        }
        .buttons{
            display: flex;
            justify-content: center;
            margin-top: 20px;
            column-gap: 10%;
        }
        .btn
        {
            background: #482723;
            border: none;
            color: whitesmoke;
        }
    </style>

    <body>
        <header class="header" id=header">
            <a href="dash.jsp" class="logo">
                <img class="logo" src="img/logo.png" height="80" width="100">
            </a> <nav class="nav container">
                <div class="menu">
                    <ul class="list">
                        <li class="item active" >
                            <a href="#" class="nav_link">
                                <i class='bx bx-home-alt' ></i>
                                <span>Home</span>
                            </a>
                        </li>

                        <li class="item">
                            <a href="show_asset.jsp?logv=" class="nav_link">
                                <i class='bx bx-building-house' ></i>                             
                                <span>Assets</span>
                            </a>
                        </li>
                        <li class="item">
                            <a href="deals.jsp" class="nav_link">
                                <i class='bx bx-phone' ></i>
                                <span>Deals</span>
                            </a>
                        </li>
                        <li class="item">
                            <a href="#" class="nav_link">
                                <i class='bx bx-help-circle'></i>       
                                <span>Help</span>
                            </a>
                        </li>

                    </ul>
                </div>
            </nav>
            <div class="login">
                <a href="signup.jsp"><button class="btn btn-dark btn1">sign up</button></a>
                <a href="login.jsp"><button class="btn btn-dark btn2">log in</button></a></div>
            <!--<a href="profile.jsp" class="user">-->
            


        </header>
        <%String city=request.getParameter("search").toUpperCase();
        String logv=request.getParameter("logv");
        %>
        <h2 style="text-align: center">Assets in <%=city%> </h2>        

                <section class="asset_container">
                    
                                        <%@page import="java.sql.*" %>
                    <%
                        
                        
                    try {
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/dreamhome?characterEncoding=latin1", "root", "");
                            Statement st = con.createStatement();
                            String q="Select * from asset_master where ass_city like '"+city+"' and ass_sellstat='NO'";
//                            out.print(q);
                            ResultSet rs = st.executeQuery(q);
                            if(rs.next()){
                            while (rs.next()) {%>
                    <div class="asset_item">
                        <div class="asset_img"><img src="<%= rs.getString(10)%>"></div>
                        <div class="asset_detail"> 
                            <p> <span><%out.print(rs.getString(3).toUpperCase());%> </span></p>
                            <p><span><%out.print(rs.getString(4).toUpperCase());%></span></p>
                            <p><span> <%out.print(rs.getString(7).toUpperCase());%></span></p>
                        </div>
                        <div class="buttons">
                            <a class="btn btn-dark" href="view_asset.jsp?asid=<%=rs.getString(2)%>&logv=<%=logv%>">View Asset</a>
                        </div>
                    </div>
                    <%   } }
                    else{%>
                    <span></span>
                    <img src="img/404 Error-amico.png" width="900">
                      <%  }
                        } catch (Exception e) {
                            out.println(e);
                        }
                    %>
                </section>
    </body>
</html>
