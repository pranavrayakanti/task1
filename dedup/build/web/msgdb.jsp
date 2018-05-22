<%-- 
    Document   : msgdb
    Created on : Jan 23, 2015, 12:23:53 PM
    Author     : rekha
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>
<%@page import="service.ss" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CaGPaP</title>
    </head>
    <body>
        
        
<%@page import="java.util.Properties"%>
<%@page import="javax.mail.*"%>
<%@page import="javax.mail.internet.*"%> 


<%!
  public static int mail(String to1,String uid,String password)
    {
        String to=to1;
        String body=uid+" Sent from "+password;
  //Get the session object  
        Properties props = new Properties();  
        props.put("mail.smtp.host", "smtp.gmail.com");  
        props.put("mail.smtp.socketFactory.port", "465");  
        props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");  
        props.put("mail.smtp.auth", "true");  
        props.put("mail.smtp.port", "465");  
   
        Session session = Session.getDefaultInstance(props,  
            new javax.mail.Authenticator() {  
            protected PasswordAuthentication getPasswordAuthentication() {  
                return new PasswordAuthentication("imageauthentication1211@gmail.com","image1211");//change accordingly  
            }  
        });  
   
  //compose message  
        try {  
                MimeMessage message = new MimeMessage(session);  
                message.setFrom(new InternetAddress("kolaratna@gmail.com"));//change accordingly  
                message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
                message.setSubject("Welcome to imageauthentication...");  
                message.setText("Generated User id : "+body);  
     
                //send message  
                Transport.send(message);  
  
                    System.out.println("message sent successfully");  
                return 1;
            } 
            catch (MessagingException e) 
            {
                throw new RuntimeException(e);
                
            } 
    }
    %>


        
        
        
                    <%
                    
                    
                                DateFormat df=new SimpleDateFormat();
                                Date d=new Date();
                                String date=(String)df.format(d);
                    
                            
                                String id=(String)session.getAttribute("id");
                                String name=(String)session.getAttribute("name");
                                String pic=(String)session.getAttribute("pic");
                                String frndmail=request.getParameter("frnd");
                                String skey=(String)session.getAttribute("skey");
                                
                                
                                PreparedStatement ps=con.prepareStatement("insert into requests values(?,?,?,?,?,?)");
                                ps.setString(1, id);
                                ps.setString(2, name);
                                ps.setString(3, pic);
                                ps.setString(4, frndmail);
                                ps.setString(5, date);
                                ps.setString(6, skey);
                                
                                
                                int i=ps.executeUpdate();
                                //ss.mail(frndmail, skey);
                                if(i>0){
                               int j=mail(frndmail,skey,name);
                                
                                                %>
                    
                                                    <script>
                                                        alert("Your Pic Has Sent To Ur Friend SuccessFully..");
                                                    </script>
        
        
        <%
                                
                                
                                }
                                                               else{
                                                               
                                                                        response.sendRedirect("msg.jsp");
                                                               
                                                               }
                    
                    

%>
    </body>
</html>
