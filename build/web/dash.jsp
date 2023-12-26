<%-- 
    Document   : dash
    Created on : 14 Jul, 2023, 9:58:16 PM
    Author     : Kunal Katira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="website icon" type="png" href="img/logo.png">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;1,200&display=swap" rel="stylesheet">
        <title>Dream home</title>
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
            /*background: #333333;*/
            font-size: 18px;
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

        /*==========================body=========================*/
        .main{
            overflow: hidden; 
            background: black;
            height: 100vh;
            overflow: hidden;
            display: flex;

        }

        .section {
            padding: 7.5rem 0 1rem;
        }
        .home{
            /*background: linear-gradient(170deg,#252725,#265265);*/
            background-image: url(img/soroush-karimi-Mx5kwvzeGC0-unsplash.jpg);
            background-size: cover;
            background-repeat: no-repeat;
            /*padding-bottom: 0rem;*/
            height: 110vh;
            display: flex;
            justify-content: flex-start;
            align-items: center;

        }

        .home_container{
            padding-top: 5rem;
            column-gap: 2rem;

        }
        .home_title{
            margin-bottom: 3rem;
            font-size: 2.25rem;
            line-height: 120%;
        }
        .home_desc{
            margin-bottom: 2rem;

        }
        .home_data{
            padding-bottom: 10rem;
            color: #e6e5de;
            position: relative;

        }
        .home_search{
            display: flex;
            align-items: center;
            width: 35%;
            margin-top: 50px;
            padding: 0px 0px 0px 10px;
            background: white;
            border-radius: 80px;
            font-size: 18px;
        }
        .home_search i{
            font-size: 20px;
            color: #804622;
            margin-left: 10px;
            margin-top: 10p;
            padding-top: 4px;
            margin-right: 10px;
            margin-top: -3px;
        }
        .in_search{
            outline: none;
            background: transparent;
            border: none;
            width: 200px;
        }
        .sub{
            height: 30px;
            padding: 3px 5px 5px 5px;
            border:none;  
            font-size: 16px;
            font-weight: 600;
            color: #804622;
            background: none;
        }
        .sub:hover{
            color: blue;
        }
        .home_wall{
            position: relative;
            display: flex;
            justify-content: flex-end;
        }
        .home_img{
            position: absolute;
            height: 450px;
            display: inline-flex;
            align-items: flex-end;
            bottom: 0rem;
        }
        .home_img img{
            width:750px;
            height: 520px;
        }

        .opt_container{
            display: flex;
            justify-content: center;
            padding: 10px;
            padding-bottom: 40px;
            column-gap: 3rem;
        }
        .opt_card{
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            column-gap: 2rem;
            height: 600px;
            width: 500px;
            border-radius: 10px;
            text-align: center;
            background: whitesmoke;
            border: 1px solid gray;
            overflow: hidden;
        }
        .opt_card:hover{
            transition: all .3s ease-in-out;
            transform: scale(1.04);
            box-shadow: 10px 10px 14px 0px rgba(0,0,0,0.24);
        }
        .opt_img{
            width: 100%;
            height: 60%;
        }
        .opt_img img{

            width: 80%;
            height: 100%;
            margin: -40px auto;
        }
        .opt_card h2{
            font-size: 24px;
            font-weight: 900;
            color: #482723;     
        }
        .opt_card h5{
            padding: 10px;
            color: #804622;
            padding-bottom: 5%;
        }
        /*footer================================*/
        footer{
            background-color: #482723;
            position: relative;
            width: 100%;
            min-height: 35%;
            padding: 3rem 1rem;
        }
        .container1   {
            max-width: 1140px;
            margin: 0 auto;
            display: flex;
            justify-content: center;
            /*align-items: center;*/
            flex-direction: column;
            height: 350px;

        }
        .row{
            display: flex;
            justify-content: space-between;
            /*/align-items: center;/*/
        }

        .col{
            min-width: 250px;
            color: black;
            font-family: poppins;
            font-weight: 600;
            padding:0 2rem;
            margin: 10% 0 0 0;
        }
        .col .logo{
            width: 90%;
            margin-bottom:45px;
            left: 0;
        }
        .col h3{
            color: wheat;
            margin-bottom: 20px;
            font-weight: 800;
            position: relative;
            cursor: pointer;
        }
        .col h3::after{
            content: '';
            height:3px;
            width:0px;
            background-color: wheat;
            position: absolute;
            bottom: 0;
            left:0;
            transition: 0.3s ease;

        }
        .col h3:hover::after{
            width:80px
        }
        .col .social a img{
            color:#3CD3AD;
            margin-top:2px;
            margin-right: 5px;
            margin-bottom: 150px;
            transition: 0.3s ease;

        }
        .col .social a img:hover{
            transform: scale(1.2);
        }
        .col .links1 a{
            display: block;
            text-decoration: none;
            color: blanchedalmond;
            margin-bottom: 3%;
            position: relative;
            transition: 0.3s ease;
        }
        .col .links1 a::before{
            content:'';
            height: 16px;
            width:3px;
            position: absolute;
            top:5px;
            left:-10px;
            color:black;
            transition: 0.5s ease;
            opacity: 0;
        }
        .col .links1 a:hover::before{
            opacity: 1;
        }
        .col .links1 a:hover{
            transform: translateX(-5px);
            color: burlywood;
        }
        .col .links a{
            display: block;
            text-decoration: none;
            color: blanchedalmond;
            margin-bottom: 3%;
            position: relative;
            transition: 0.3s ease;
        }
        .col .links a::before{
            content:'';
            height: 16px;
            width:3px;
            position: absolute;
            top:5px;
            left:-10px;
            background-color: burlywood;
            transition: 0.5s ease;
            opacity: 0;
        }
        .col .links a:hover::before{
            opacity: 1;
        }
        .col .links a:hover{
            transform: translateX(-8px);
            color: burlywood;
        }
        .col .contact-details{
            display: inline-flex;
            justify-content: space-around;
            color: blanchedalmond;

        }
        .col .contact-details:hover{
            color: burlywood;

        }
        .col .contact-details i{
            margin-right:8px;
            margin-top: 5px;   
        }
        .row .form{
            margin-bottom: 80px;
            display: flex;
            justify-content: center;
            align-items: center;
            /*padding:2rem 0;*/
        }
        .row .form input{
            background-color: #fff;
            border:1px solid;
            outline:none;
            padding:5px 10px;
            border-radius: 6px;
            border-top-right-radius: 0;
            border-bottom-right-radius: 0;
        }
        .form button{
            padding:5px 10px;
            border:0;
            color: black;
            border-radius: 6px;
            border-top-left-radius: 0;
            border-bottom-left-radius: 0;
            background-color: burlywood;

        }
        .form i{
            font-size: 22px;
        }
      
    </style>
    <body>
        <%
            String logv = request.getParameter("logv");
        %>
        <header class="header" id=header">
            <a href="" class="logo">
                <img class="logo" src="img/logo.png" height="80" width="100">
            </a>
            <nav class="nav container">
                <div class="menu">
                    <ul class="list">
                        <li class="item active" >
                            <a href="#" class="nav_link">
                                <i class='bx bx-home-alt' ></i>
                                <span>Home</span>
                            </a>
                        </li>

                        <li class="item">
                            <a href="show_asset.jsp?logv=<%=logv%>" class="nav_link">
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
                <a href="signup.jsp"><button class="btn btn-outline-dark btn1">sign up</button></a>
                <a href="login.jsp"><button class="btn btn-dark btn2">log in</button></a></div>
            <a href="profile.jsp" class="user">

                <div class="">
                    <%

                        if (logv != null) {
                            String unm = session.getAttribute("snm").toString().toUpperCase();
                            char trm = unm.charAt(0);
                            out.println(trm);
                            out.println(" <style>.login{display: none;}.user{display: flex;};</style>");
                        } else {
                            out.println(" <style>.user{display: none;}.login{display: flex;};</style>");

                        }

                    %>
                </div> 
            </a>         
        </header>
        <main>
            <section class="home section">
                <div class="home_container container">
                    <div class="home_data">
                        <!--                        <h1 class="home_title">
                                                        NOW ITS EASY TO <br> FIND YOUR FUTURE HOME<br>
                                                </h1>-->
                        <h1 class="home_title"> <span id="element"></span></h1>
                        <p class="home_desc">
                            DreamHome is not just a website – it's a doorway to the home of your dreams.<br>
                            We're here to help you find that perfect place where you can build a life,<br> 
                            Start your journey today with DreamHome!
                        </p>

                        <form action="search_result.jsp?logv=<%=logv%>" class="home_search" method="post">
                            <i class='bx bx-search bx-tada bx-mg' ></i>
                            <input type="search" placeholder="Search by location" name="search" class="in_search" required>
                            <input type="submit" value="Search" name="btn_search" class="sub" />
                        </form>
                    </div>
                </div>
                <div class="home_wall">
                    <div class="home_img">
                        <!--<img src="img/home.png">-->
                    </div>
                </div>
            </section>
            <section class="option section">
                <div class="opt_container">
                    <article class="opt_card">
                        <div class="opt_img">
                            <img src="img/House searching-cuate (1).png">
                        </div>
                        <div class="opt_det">   
                            <h2 class="opt_head">
                                Buy a home
                            </h2>
                            <h5 class="opt_desc">
                                Find your place with an immersive photo <br>experience and the most listings,
                                including<br> things you won’t find anywhere else.
                            </h5>
                            <a href="show_asset.jsp?logv=<%=logv%>"><button class="btn btn-outline-dark">Browse</button></a>
                        </div>
                    </article>
                    <article class="opt_card">
                        <div class="opt_img">
                            <img src="img/For sale-pana.png">
                        </div>
                        <div class="opt_det">
                            <h2 class="opt_head">
                                Sell a home
                            </h2>
                            <h5 class="opt_desc">
                                No matter what path you take to sell your<br> home, we can help you navigate a successful <br>sale.
                            </h5>
                            <%

                                if (logv != null) {
                            %> <a href="ass_form.jsp?logv=<%=logv%>" ><button class="btn btn-outline-dark">Browse</button></a>
                            <% } else {
                            %><a href="login.jsp" ><button class="btn btn-outline-dark">Browse</button></a>
                            <%
                                }
                            %>

                        </div>
                    </article>
                </div>
            </section>
        </main>
        <footer>
            <div class="container1">
                <div class="row">
                    <div class="col" id="company">
                        <!--<img src="image/cityguide" alt="" class="logo">-->
                        <p>

                        </p>
                        <div class="social">
                            <h3>Social</h3>
                            <div class="link">
                                <a href="#"><img src="img/icons-instagram-.png"></a>
                                <a href="#"><img src="img/icons-linkedin.png"></a>
                                <a href="#"><img src="img/icons-twitter.png"></a>
                                <a href="#"><img src="img/icons-facebook.png"></a>
                            </div>
                        </div>
                    </div>


                    <div class="col" id="services">
                        <h3>Services</h3>
                        <div class="links1">
                            <a href="#">Property</a>
                            <a href="#">Your property</a>
                            <a href="#">Your Profile</a>
                            <a href="#">Search property</a>
                        </div>
                    </div>

                    <div class="col" id="useful-links">
                        <h3>Links</h3>
                        <div class="links">
                            <a href="aboutus.jsp?logv=<%= logv%>">About</a>
                            <a href="#">Services</a>
                            <a href="#">Our Policy</a>
                            <a href="#">Help</a>
                        </div>
                    </div>

                    <div class="col" id="contact">
                        <h3>Contact</h3>
                        <div class="contact-details">
                            <i class="fa fa-location"></i>
                            <p>Kunal Katira <br><br> Jhanvi Gohel
                                <br><br>Mehul Gohil<br>
                            </p>
                        </div>
                        <br><br>
                        <div class="contact-details">
                            <i class="bx bx-phone"></i>
                            <p>+91-9664614937</p>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="form">
                        <form action="">
                            <input type="text" placeholder="Email here...">
                            <button> <i class='bx bxs-paper-plane bx-tada' ></i>   </button>
                        </form>
                    </div>
                </div>

            </div>
        </footer>
        <!--typed js-->
        <script src="https://unpkg.com/typed.js@2.0.16/dist/typed.umd.js"></script>
        <script>
            var typed = new Typed('#element', {
                strings: ['NOW ITS EASY TO FIND YOUR FUTURE HOME.', 'Live, Laugh, Love – In Your Dream Home.', 'Find Your Forever Home',
                    'Making Your Dream Home a Reality.', 'Start Living Your Dream Today.'],
                typeSpeed: 70,
            });
        </script>
    </body>
</html>
