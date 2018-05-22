<%-- 
    Document   : accept
    Created on : Feb 4, 2015, 9:44:20 AM
    Author     : Manusai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                    
                        String mail=request.getParameter("mail");
                        String skey=request.getParameter("skey");

                        int i=mail(mail, skey, "security Key");
                            
                        response.sendRedirect("sent.jsp");
%>
    </body>
</html>
