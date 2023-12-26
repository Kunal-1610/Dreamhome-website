<%-- 
    Document   : add_ameities
    Created on : 28 Jul, 2023, 7:24:25 PM
    Author     : Kunal Katira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add amenities</title>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;1,200&display=swap" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    </head>
    <style>
    
    .child input[type="text"],
    textarea
    {
        background: transparent;
        border: none;
        border-bottom: 1px solid #0275d8;
        outline: none;
        width: 300px;
        margin-top: 20px;
/*        padding: 10px;   */
        color: #0275d8;
        resize: none;
        
    }
    .child input[type="submit"]
     {
            border-radius: 10px;
            width: 100px;
            margin-left: 200px;
            margin-bottom: 0px;
     }
     .btn:hover{
        background: linear-gradient(170deg,#252725,#265265);
     }

    </style>
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
            padding: 100px 0px;
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
         <%@page import="java.sql.*" %>
        <%
            int srno=0;
            String ass_id=request.getParameter("asid");
            try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/dreamhome?characterEncoding=latin1", "root", "");
                        Statement st = con.createStatement();

                        ResultSet rs = st.executeQuery("Select * from asset_detail where ass_id="+ass_id+" order by ass_srno");
                        while(rs.next())
                        {
                            srno=rs.getInt(2);
                        }
                        srno++;
                        rs.close();
                        con.close();
            }
            catch(Exception e){
                out.println(e);
            }
            %>
            <div class="parent">
                <div class="child">
                    
            <form action="save_amenities.jsp" enctype="multipart/form-data" method="post">
                
             <input type="hidden" value="<%=ass_id%>" name="ass_id">
             <div class="formdata"> aminities : <input type="text" value="<%= srno%>" name="ass_srno" readonly></div>
            <div class="formdata"><input type="text" placeholder="asset title" name="ass_title"></div>
            <div class="formdata"><textarea placeholder="asset desc" rows="2" cols="50" name="ass_desc"></textarea></div>
            <div class="formdata"><input type="file" name="file"></div>
            <div class="formdata"><input type="submit" class="btn btn-outline-dark"></div>
            
        </form>
                </div>
            </div>
    </body>
</html>
