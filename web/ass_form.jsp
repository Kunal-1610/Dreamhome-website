<%-- 
    Document   : ass_form
    Created on : 5 Jul, 2023, 7:22:40 PM
    Author     : Kunal Katira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;1,200&display=swap" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

        <title>Asset detail</title>
    </head>
    <style>
        *{
            margin: 0px;
            padding: 0px;
            font-family: 'poppins' ,serif;

        }
        body{
            display: flex;
            color: lightgray;
            background: transparent;
            justify-content: center;
            background-image: url("img/id-interiors-VWt1BBQwwtU-unsplash.jpg");
            background-size: cover;
            background-repeat: no-repeat;

        }
        .child{
            opacity: 0.9;
            display: flex;
            background: black;
            /*background-image: linear-gradient( teal , burlywood);*/
            border-radius: 10px;
            box-shadow: 5px 5px 20px 1px ;
            height: 90vh;
            /*justify-content: center;*/
            align-items: center;
            margin-top: 40px;
            width: 50vw;
        }
        .child h2{
            margin-left: 200px;
            margin-bottom: 80px;
            margin-top: -100px;
        }
        input{margin-right: 20px;}
        .child input[type="text"],
        .child input[type="number"],
        textarea
        {
            margin: 20px 20px 20px 20px;
            width: 335px; 
            color: white;
            border: 0px;
            border-bottom: 2px solid #0275d8;
            background: transparent;
            outline: none;      
            resize: none;    
        }
/*        .clearance{
            display: flex;
            justify-content: center;
            flex-direction: row;
            column-gap: 5%;
        }
        .data{
            position: relative;
            display: flex;
            column-gap: 1%;
        }*/
        h6{
            margin:10px 10px;
        }
        /*.radio{height: 100%;*/
                /*}*/
        .child input[type="submit"]
        {
            border-radius: 10px;
            width: 200px;
            margin-left: 250px;
            margin-top: 50px;
        }


    </style>
        <% String logv=request.getParameter("logv");%>

    <body>
        <div class="child">
            <form method="POST"  action="ass_master_logi.jsp?logv=<%=logv%>" enctype="multipart/form-data">
                <h2>Your property detail</h2>
                <input type="text" placeholder="Asset Name" name="name" required>
                <input type="text" placeholder="Asset type" name="type" required><br>
                <textarea placeholder="Asset Description"  rows="2" cols="50" name="desc"required ></textarea>
                <textarea placeholder="Asset address"  rows="2" cols="50" name="address" required></textarea><br>
                <input type="text" placeholder="Asset city" name="city" >
                Clearance
                <input type="radio" class="btn-check" name="btnradio" id="btnradio1" value="yes" autocomplete="off" checked >
                        <label class="btn btn-outline-primary radio" for="btnradio1" >Yes</label>

                        <input type="radio" class="btn-check" name="btnradio" id="btnradio2" value="no" autocomplete="off">
                        <label class="btn btn-outline-primary radio" for="btnradio2">No</label>

                        <input type="radio" class="btn-check" name="btnradio" id="btnradio3" value="apply" autocomplete="off">
                        <label class="btn btn-outline-primary radio" for="btnradio3" required>Applied</label>
                    <br>
                <input type="number" placeholder="Asset amount" name="amt"required > 
                    <input type="file" name="upload" multiple="false" required>
                <input type="submit" class="btn btn-outline-primary" value="Save">
            </form>
        </div>
    </body>
</html>

