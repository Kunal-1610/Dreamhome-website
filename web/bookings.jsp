<%-- 
    Document   : bookings
    Created on : 7 Aug, 2023, 7:53:41 PM
    Author     : Kunal Katira
--%>

<%@page import="java.time.LocalDate"%>
<%@page import="oracle.sql.DATE"%>
<%@page import="java.sql.*"%>
<%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="website icon" type="png" href="img/logo.png">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384">
        <title>Booked</title>
    </head>
    <style>
        *{
            box-sizing: border-box;
            padding: 0;
            margin: 0;
        }
        html {
            scroll-behavior: smooth;
        }
        body{
            background-image: url("img/alexandra-gorn-JIUjvqe2ZHg-unsplash.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            font-size: 18px;
            display: flex;
            justify-content: center;


        }
        ul {
            list-style: none;
        }

        a{
            text-decoration: none;
            color: black;
        }
        div{
            font-family: "poppins", serif;

        }
        .child{
            border: 1px solid ;
        }

    </style>
    <body>
        <% String logv = request.getParameter("logv");
            String asid = request.getParameter("asid");
            try {
                if (logv.equals("null")) {
                    response.sendRedirect("login.jsp");
                } else {

                    try {

                         String to="";
                        final String subject = "Booking of property";
                         String messg="";
                        final String from = "kunalworkspace27@gmail.com";
                        final String pass = "kwmnugabknrshaxe";
                        String host = "smtp.gmail.com";
                        String sellid = null;
                        String sellnm = null;
                        String sellphn = null;
                        String sellemil = null;
                        String ass_name = null;
                        String ass_price = null;
                        String ass_type = null;
                        

                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/dreamhome?characterEncoding=latin1", "root", "");
                        Statement st = con.createStatement();
                        ResultSet rs = st.executeQuery("select * from asset_master where ass_id=" + asid + " and ass_sellstat='NO'");
                        while (rs.next()) {
                            sellid = (rs.getString(1));
                            ass_name = (rs.getString(3));
                            ass_price = (rs.getString(9));
                            ass_type = (rs.getString(4));
                            
                        }
                        String bid = session.getAttribute("sid").toString();

                        to = session.getAttribute("seml").toString();

                        LocalDate dt = LocalDate.now();
                        Statement st2 = con.createStatement();
                        String q1 = "insert into booking values(" + bid + "," + sellid + "," + asid + ",'" + dt.toString() + "')";
                        int cnt = st2.executeUpdate(q1);
                        String q2 = "update asset_master set ass_sellstat='YES' where ass_id=" + asid;
                        int cnt2 = st2.executeUpdate(q2);
                        if (cnt > 0 && cnt2 > 0) {%>
        <div class="child">
            <div class="Msg"> your assets are succesfully booked check your Gmail</div>

            <div><a href="your_bookings.jsp?logv=<%=logv%>" class="btn btn-outline-dark">your bookings</a></div>
            <div><a href="show_asset.jsp?logv=<%=logv%>"class="btn btn-dark">Home</a></div>
        </div>
        <%          
                    Statement st3=con.createStatement();
                    ResultSet rs2=st3.executeQuery("select * from client_master where c_id = "+sellid);
                    while(rs2.next()){
                        sellnm=(rs2.getString(2));
                        sellemil=(rs2.getString(4));
                        sellphn=(rs2.getString(5));
                    }
                            messg = "The booking of the " + ass_name +" ("+ass_type+") at rupess "+ass_price+" is successfull  "
                                    + "seller detail  "
                                    + "Name :"+sellnm +"  "
                                    +"Email :"+sellemil+"  "
                                    +"Contact :"+sellphn+"  ";
                        }
 Properties props = new Properties();

 

    // Defining properties

    props.put("mail.smtp.host", host);  
    props.put("mail.smtp.port", "587");
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.starttls.enable", "true");
    props.put("mail.smtp.tsl.trust","smtp.gmail.com");
    props.put("mail.transport.protocol", "smtp");



    props.put("mail.user", from);

    props.put("mail.password", pass);


 

    // Authorized the Session object.

    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {

        @Override

        protected PasswordAuthentication getPasswordAuthentication() {

            return new PasswordAuthentication(from, pass);

        }

    });

 

    try {

        // Create a default MimeMessage object.

        Message message = new MimeMessage(mailSession);

        // Set From: header field of the header.

        message.setFrom(new InternetAddress(from));

        // Set To: header field of the header.

        message.addRecipient(Message.RecipientType.TO,

                new InternetAddress(to));

        // Set Subject: header field

        message.setSubject(subject);

        // Now set the actual message

        message.setText(messg);

        // Send message

        Transport.send(message);


    } catch (MessagingException mex) {
out.print(mex);
//      
    }
                        con.close();
                    } catch (Exception e) {
                        out.println(e);
                    }

                }

            } catch (Exception e) {
                out.println(e);
            }

        %>

    </body>
</html>
