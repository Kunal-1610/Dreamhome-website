<%-- 
    Document   : forgotpass
    Created on : 8 Aug, 2023, 7:23:39 PM
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
            align-items: center;
            flex-direction: column;
          margin-bottom: 10%;
        }
        
        input[type="text"]{
            background: transparent;
            border: none;
            border-bottom: 1px solid;
            outline: none;
            margin: 10% auto;
            width: 100%;
            height: 20%;
        }
        div{
                        display: flex;
            justify-content: center;
        }
        .btn{
            width: 50%;

        }
        </style>
    <body>
        <div class="parent">
            <div class="child">
                             <form action="forgotpass2.jsp" method="post">

                <div class="head"> <h2>Confirm your identity</h2></div>
            <div> <input type="text" name="unm" placeholder="Username/email"></div>
            <div> <input type="submit" value="Check" class="btn btn-outline-dark"></div>
                
                        </form>

            </div>
        </div>
    </body>
</html>
