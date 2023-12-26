<%-- 
    Document   : aboutus
    Created on : 13 Aug, 2023, 11:42:32 PM
    Author     : Kunal Katira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="website icon" type="png" href="img/logo.png">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;1,200&display=swap" rel="stylesheet">
        <title>JSP Page</title>
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
        .parent{
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .child{
            background: #482723;
            width: 90%;
            color: blanchedalmond;
            column-gap: 1rem;
            padding: 2rem;
            margin: 3rem auto;
        }
        h3{
            color: white;
            font-weight: 800;
        }
        
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
            <a href="dash.jsp" class="logo">
                <img class="logo" src="img/logo.png" height="80" width="100">
            </a>
            <nav class="nav container">
                <div class="menu">
                    <ul class="list">
                        <li class="item" >
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

        
        <div class="parent">
                       <div class="child">
    <h3>About Us:</h3> <P>Welcome to DreamHome – Where Your Homeownership Dreams Soar!</p>

        <p>At DreamHome, we are not just in the business of real estate; we are in the business of transforming dreams into addresses, aspirations into realities, and houses into cherished homes. Established with a passion for connecting individuals with their ideal living spaces, DreamHome has grown to become a trusted name in the real estate industry.
        </p>
        <h3>Our Vision:</h3>
        <p>To be the ultimate facilitator of homeownership dreams, empowering individuals and families to find the perfect place to create lasting memories, foster growth, and build their futures.
        </p>
        
        <h3>Our Mission:</h3>
        <p> We are dedicated to providing an unparalleled homebuying experience by combining cutting-edge technology, expert knowledge, and a human-centered approach to guide our clients through every step of their real estate journey.
        </p>
        <h3>Why Choose DreamHome:</h3>

        <p> Experience That Matters: With years of industry expertise, our team brings a wealth of knowledge and insight to the table. We've seen trends come and go, and we use this experience to help you navigate the ever-changing real estate landscape.
        </p>
        <h3>Personalized Attention: </h3>We understand that every homebuyer's journey is unique. That's why we take the time to understand your specific needs, preferences, and goals, ensuring that your home search aligns perfectly with your vision.

        <h3> Technology-Driven Innovation:</h3> Leveraging the latest advancements in real estate technology, we offer tools like immersive virtual tours, AI-driven recommendations, and intuitive calculators, giving you the power to make informed decisions at your fingertips.

        <h3> Comprehensive Resources:</h3> From neighborhood insights and property details to financial guidance and market trends, we provide a comprehensive range of resources to equip you with the information you need to make confident choices.

        <h3>Customer-Centric Approach:</h3> At DreamHome, you're not just a client; you're a partner on the journey to your dream home. Our dedicated support team is committed to providing exceptional service, addressing your questions, and ensuring your experience is seamless and satisfying.

        Community and Engagement: Beyond transactions, we believe in building a community of homebuyers who can share their experiences, tips, and stories. Join our forums, attend workshops, and connect with like-minded individuals who share your excitement for homeownership.

        <h3> Our Commitment:</h3>
            <p> At DreamHome, our commitment goes beyond selling homes. We're committed to building lasting relationships with our clients, guiding them toward their dreams, and helping them create a haven where life's most precious moments unfold.

        Embark on a journey where your dreams are the destination, and let DreamHome be your guide. Discover homes that reflect your aspirations, connect with a team that understands your vision, and take the first step toward a future that's built on the foundation of your dream home.

        Welcome to DreamHome – Where Your Dream Home Awaits!

            </div>
        </div>

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
                            <a href="aboutus.jsp">About</a>
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

    </body>
</html>
