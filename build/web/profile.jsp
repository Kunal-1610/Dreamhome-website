<%-- 
    Document   : profile
    Created on : 24 Jul, 2023, 7:10:24 PM
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
            position: relative;
            padding-top: 30px;
            width: 100%;
            background: whitesmoke;
            transition: .4s;

        }
        .nav {
            height: 4.5rem;
            margin-right: 10rem;
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
            /*width: initial;*/
            margin-left: auto;
            /*margin-right: 50px;*/
        }
        .menu i{
            display: none;
        }

        .item span:hover
        {
            border-bottom: 2px solid blue;
            color: blue;
            transition: all .4s ease;
            /*transform: scale(1.3);*/

        }
        .menu .list{
            display: flex;
            column-gap: 5rem;
        }
        /*        .nav_link span:hover{ 
                    color: gray;
                 } */
        .user
        {
            display: flex;
            align-content:center; 
            justify-content: center;
            background: #482723;
            color: whitesmoke;
            margin-top: 10px;
            margin-right: 50px;
            height: 200px;
            width: 200px;
            font-size: 80px;
            text-decoration: none;
            border-radius: 50%;
            align-items: center;
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
        .title{
            text-align: center; 
            margin: 5% 0 0 0;
        }
       .buttons{
            display: flex;
            justify-content: center;
            margin-top: 20px;
            column-gap: 10%;
        }
 section{
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
        }
        .asset_container{
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 10px;
            background: transparent ;
        }
       .asset_item{
            background: white;
            height:80vh;
            margin: 10% auto 0 auto;
            width: 30vw;
            border-radius: 10px;
            overflow: hidden;
            border: 1px solid;
            transition: .2s ease; 
        }
        .asset_item:hover {
            margin-top: 30px;
            transform: scale(1.03);
            box-shadow: 10px 10px 14px 0px rgba(0,0,0,0.24);

        }
        .asset_img{
            background: yellow;
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
            color: #482723;
            font-weight: 600;
        }
        .show_asset{
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
        .btn{
            background:#482723;
            color: white;   
        }
    </style>

    <body>
        <header class="header" id=header">
            <a href="dash.jsp" class="logo">
                <img class="logo" src="img/logo.png" height="80" width="100">
            </a>
           
            <%
                String unm = session.getAttribute("sunm").toString();
            %>
      


        </header>
        
            <article class="user_det">
                <%
                    String id = session.getAttribute("sid").toString();
                    String nm = session.getAttribute("snm").toString().toUpperCase();
                    String eml = session.getAttribute("seml").toString();
                    String mob = session.getAttribute("smob").toString();%>
                <a href="#" class="user">
                    <div class="user_logo">
                        <%
                            char trm = nm.charAt(0);
                            out.println(trm);
                        %>
                    </div>      </a>        


                <div class="user_data">
                    <h2><% out.println(nm);%> </h2> 
                    <div class="user_data"><p><% out.println(unm);%> </p></div> 
                    <div class="user_data"><p><% out.println(eml);%> </p></div> 
                    <div class="user_data"><p><% out.println(mob);%> </p></div>
                    <a href="log_out.jsp"> <div class="btn btn-dark">Log-out</div></a>
                    <a href="your_bookings.jsp?logv=<%=id%>"> <div class="btn btn-dark">Your bookings</div></a>

                </div>

            </article>
            
                    <h1 class="title">Your Assets</h1>
                <section class="asset_container">
                    
                    <%@page import="java.sql.*" %>
                    <%
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/dreamhome?characterEncoding=latin1", "root", "");
                            Statement st = con.createStatement();

                            ResultSet rs = st.executeQuery("Select * from asset_master where c_id="+id+" and ass_sellstat='NO'");
                            while (rs.next()) {%>
                    <div class="asset_item">
                        <div class="asset_img"><img src="<%= rs.getString(10)%>"></div>
                        <div class="asset_detail"> 
                            <p> <span><%out.print(rs.getString(3).toUpperCase());%> </span></p>
                            <p><span><%out.print(rs.getString(4).toUpperCase());%></span></p>
                            <p><span> <%out.print(rs.getString(7).toUpperCase());%></span></p>
                        </div>
                        <div class="buttons">
                            <a class="btn btn-dark" href="self_assetview.jsp?asid=<%=rs.getString(2)%>">View Asset</a>
                            <a class="btn btn-dark" href="add_amenities.jsp?asid=<%=rs.getString(2)%>">Add aminities</a>
                        </div>
                    </div>
                    <%    }
                        } catch (Exception e) {
                            out.println(e);
                        }
                    %>
                </section>
    </body>
</html>
