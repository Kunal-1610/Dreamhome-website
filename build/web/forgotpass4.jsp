<%-- 
    Document   : forgotpass4
    Created on : 9 Aug, 2023, 7:42:55 PM
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
        <script>
    function check(){
    const p1,p2;
    p1=document.f1.pass.value;
    p2=document.f1.cpass.value;
    if(p1 === p2)
    {
        return true
    }
    else{
        alert("Password mismatched");
        return false;
    }
}
</script>
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
          margin-bottom: 15%;
          width: 30%;;
        }
        
        input[type="text"],
        input[type="password"]{
            background: transparent;
            border: none;
            border-bottom: 1px solid;
            outline: none;
            margin:5% 0;
            width: 80%;
            height: 20%;
        }
        div{
            display: flex;
            justify-content: center;
        }
        .btn{
            width: 25%;

        }
        </style>
    </head>
    <body>
        <div class="parent">
            <div class="child">
                <form method="post" name="f1"action="update_pass.jsp" onsubmit="return check()">
            <div><h2>New password</h2></div>
            <%
                String unm = request.getParameter("unm");
            %>
            <div><input type="text" value="<%=unm%>" readonly name="unm"></div>
                <div><input type="password" placeholder="Enter new password" name="pass"></div>
                <div> <input type="password" placeholder="Confirm password" name="cpass"></div>
                <div> <input type="submit" value="Confirm" class="btn btn-outline-dark"></div>
        </form>
            </div>
        </div>  
    </body>
</html>

