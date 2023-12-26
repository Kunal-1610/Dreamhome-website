<%-- 
    Document   : signup
    Created on : 30 Jun, 2023, 1:03:30 PM
    Author     : Kunal Katira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
                <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup</title>
                <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;1,200&display=swap" rel="stylesheet">

              <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<!--        <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">-->

        <title>Login</title>
    </head>
    <style>
        *{
            margin: 0px;
            padding: 0px;
            font-family: "poppins",serif;
        }
        body {
        display: flex;
        flex-wrap: wrap;
        font-family: sans-serif;
        }
     .parent{
            display: flex;
            background: url(img/alexandra-gorn-JIUjvqe2ZHg-unsplash.jpg);
            background-size: 100vw 150vh;
            background-repeat: no-repeat;
            height:100vh;
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
        display: flex;
         padding: 110px;
        height: 600px;
          opacity: 0.9;
        justify-content: center;
        width: 500px;
    }
    input
    {
       margin: 10px auto;
    }
    .child input[type="text"],
    .child input[type="password"],
    .child input[type="radio"],
    .child input[type="email"]
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
            border-radius: 10px;
            width: 100px;
            margin-left: 200px;
            margin-bottom: 0px;
     }
    label,
    .child input[type="radio"]
    {
        height: 35px; 
        margin-top: 10px;
        margin-left: 10px;
        align-content: center;    
       
    }

     a
     {
         text-decoration: none;
         color: #0275d8;
        font-size: 14px;
         }
  .logo
     {
         height:40px;
         margin-top:-110px ;
         margin-left:125px;
         
     }
    .child .login
     {
            display: flex;
           border-radius: 10px;
            margin-left: 15%;
            margin-top: 30px;
     }
   
    </style>
    <body>
     <div class="parent">

        <div class="child">
            <form action="forgot.jsp" method="post">
                <img src="img\add-user_747968.png" class="logo">

                <input type="text" class="Name w-13" placeholder="Name" name="name" maxlength="30" rquired><br>
               <input type="text" class="username w-13" placeholder="Username" name="username"  maxlength="30" required><br>
               <input type="email" class="email w-13" placeholder="e-mail" name="email"  maxlength="45" required><br>
                <input type="text" class="mobile w-13" placeholder="mobile" name="mobile" maxlength="15" required><br>
                <input type="password" class="password " placeholder="password" name="password" required minlength="6" maxlength="20"> <br>
                
                <input type="radio" class="btn-check" name="btnradio" id="btnradio1" value="contractor" autocomplete="off" >
                <label class="btn btn-outline-primary" for="btnradio1">Contractor</label>

                <input type="radio" class="btn-check" name="btnradio" id="btnradio2" value="broker" autocomplete="off">
                <label class="btn btn-outline-primary" for="btnradio2">Broker</label>

                <input type="radio" class="btn-check" name="btnradio" id="btnradio3" value="other" autocomplete="off">
                <label class="btn btn-outline-primary" for="btnradio3">Other</label>
                <input type="submit" class="btn btn-outline-primary btn mt-4" value=" Next ">
                <a href="login.jsp" class="login">already have an account? log in</a>

                
                
            </form>
        </div>
     </div>
    
    </body>
</html>
