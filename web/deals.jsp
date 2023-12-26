<%-- 
    Document   : deals
    Created on : 11 Aug, 2023, 7:09:17 PM
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
        <title>Deals</title>
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
       
        .parent{
            width: 100%;
            height: 100vh;
            background: linear-gradient(180deg,whitesmoke,#804622);
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .child{
            background: wheat;
            width: 85%;
        }
        table{
            width: 100%;
            text-align:center;
        }
        th{
            background: #804622;
            color: white;
            border: 1px solid black;
            font-weight: 550;
        }
        td{
            border: 1px solid;
            font-weight: 100;
        }
        
        
    </style>
       
        
    <body>
         <%@page import="java.sql.*" %>

        <%
             try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/dreamhome?characterEncoding=latin1", "root", "");
                Statement st = con.createStatement();
                int buyerId=0;
                int sellerId=0;
                int assetId=0;
                String bookDate=null;
                
                Statement st2 = con.createStatement();
                
                     Statement st3 = con.createStatement();
                
                 Statement st4 = con.createStatement();
                
                
       %>
       <div class="parent">
           <div class="child">
       <table border="1" width="1" cellspacing="" cellpadding="10">
           <thead>
               <tr>
                   <th>Date</th>
                   <th>Buyer ID</th>
                   <th>Buyer Name</th>
                   <th>Seller ID</th>
                   <th>Seller Name</th>
                   <th>Asset ID</th>
                   <th>Asset </th>
                   <th>Price</th>
               </tr>
           </thead>
           <tbody>
               <tr>
                   <%
                       ResultSet rs=st.executeQuery("select * from booking");
                while(rs.next()){
                                        out.println("<td>");
                    buyerId=rs.getInt(1);
                    sellerId=rs.getInt(2);
                    assetId=rs.getInt(3);
                    bookDate=rs.getString(4);
                    out.println(bookDate);
                                        out.println("</td>");

                    
                %>
                   <td><%out.println(buyerId);%></td>
                   <td><%ResultSet rs2=st2.executeQuery("select * from client_master where c_id="+buyerId);
                while(rs2.next()){
                    out.println(rs2.getString(2));
                }%></td>
                   <td><%out.println(sellerId);%></td>
                   <td><% ResultSet rs3=st3.executeQuery("select * from client_master where c_id="+sellerId);
                while(rs3.next()){
                    out.println(rs3.getString(2));
                }%></td>
                   <td><%out.print(assetId);%></td>
                   <td><%                ResultSet rs4=st4.executeQuery("select * from asset_master where ass_id="+assetId);
                while(rs4.next()){
                    out.println(rs4.getString(4));
                    
%></td>
                   <td><%out.println(rs4.getString(9));
                }%></td>
               </tr>
               <%}%>
           </tbody>
       </table>
<%con.close();
       }
       catch(Exception e){
       out.println(e);
       }%>
           </div>
       </div>
    </body>
</html>
