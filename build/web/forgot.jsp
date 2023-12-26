<%-- 
    Document   : save
    Created on : 1 Jul, 2023, 7:24:54 PM
    Author     : Kunal Katira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;1,200&display=swap" rel="stylesheet">

        <title>JSP Page</title>
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
            <div class="heading">
                <form action="signuplog.jsp" method="post" >
                           <h1>Forgot password detail</h1>
                           <p> Select question from the list and provide appropriate answer.<br><br>
                               Remember the answer if you forgot the password this answer will required.</p>
                           <%   String name=request.getParameter("name");
                              String username=request.getParameter("username");
                           String email=request.getParameter("email");
                           String mobile=request.getParameter("mobile");
                           String password=request.getParameter("password");
                            String type=request.getParameter("btnradio");
                           %>
                           
                           <input type="hidden" name="name" value="<%= name%>">
                           <input type="hidden" name="username" value="<%= username%>">
                           <input type="hidden" name="email" value="<%= email%>">
                           <input type="hidden" name="mobile" value="<%= mobile%>">
                           <input type="hidden" name="password" value="<%= password%>">
                           <input type="hidden" name="btnradio" value="<%= type%>">
                           <select name="forgotQue" required>
                                
                               <option value="" disabled selected hidden>choose your questtion</option>
                               <option>what was the name of your first school name?</option>
                               <option>what was your childhood best friend name?</option>
                               <option>what was your childhood nick name?</option>
                           </select>
                        <input type="text"  placeholder="your answer" name="forgotAns" required><br>
                        <input type="submit" class="btn btn-outline-primary btn" value="Sign in">
                </form>
            </div>      
        </div>
     </div>
    </body>
</html>
