<%-- 
    Document   : login
    Created on : 29 Jun, 2023, 2:23:54 AM
    Author     : Kunal Katira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;1,200&display=swap" rel="stylesheet">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <!--        <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">-->

        <title>Login</title>
    </head>


    <style>
        *{
            margin: 0px;
            padding: 0px;
            font-family: "poppins", serif;
        }
        body {
            display: flex;
            font-family: sans-serif;
        }
        .parent{
            display: flex;
            background: url(img/alexandra-gorn-JIUjvqe2ZHg-unsplash.jpg);
            /*background: black;*/
            background-size: 100vw 150vh;
            background-repeat: no-repeat;
            height:100vh;
            box-sizing: border-box; 
            /*filter: blur(1px);*/
            width: 100vw;
            justify-content: center;
            align-items: center;

        }   
        .child {
            background: rgba( 255, 255, 254, 0.25 );
            box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
            backdrop-filter: blur( 4px );
            -webkit-backdrop-filter: blur( 4px );
            border-radius: 10px;
            border: 1px solid rgba( 255, 255, 255, 0.18 );
            /*background: ;*/
            display: flex;
            padding: 150px 40px;
            box-sizing: border-box;
            height: 450px;
            opacity: 0.9;
            justify-content: center;
            width: 500px;
            border: 1px solid;
            border-radius: 5%;
            margin-bottom: 10%;
        }
        input
        {
            margin: 10px auto;

        }
        .child input[type="text"],
        .child input[type="password"]
        {
            background: transparent;
            border: none;
            border-bottom: 1px solid #0275d8;
            outline: none;
            width: 300px;
            margin-top: 20px;
            /*        padding: 10px;   */
            color: #0275d8;

        }
        .child input[type="submit"]
        {
            border-radius: 20px;
            width: 200px;
            margin-left: 50px;
            margin-top: 10px;

        }
        .forgot
        {
            display: flex;
            color: #0275d8;
            padding: 10px;
            justify-content: space-between;

        }
        a{
            text-decoration: none;
        }

        .icone img
        {
            height:50px;
            margin-top:-500px;
            margin-left: 120px;
        }
        span{
            color: transparent;
            margin-left: 60px;
        }

    </style>
    <body>  
        <div class="parent">

            <div class="child">
                <form action="loginlog.jsp" method="POST">
                    <!--<input type="hidden" >-->
                    <input type="text" class="username w-13" placeholder="Username/e-mail" name="username" required><br>
                    <input type="password" class="password" placeholder="password" name="password" required minlength="6"> <br>
                    <input type="submit" class="btn btn-outline-primary btn" value="Login" onclick="">
                    <div class="icone">
                        <img src="img\logi.png" >
                    </div>
                    <div class="forgot">
                        <a href="forgotpass.jsp">Forgot password?</a>
                        <a href="signup.jsp"class="signup">Sign in</a>
                    </div>
                </form>
            </div>

        </div>
        
    </body>
</html>
