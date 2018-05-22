<%-- 
    Document   : contactdb
    Created on : Jan 27, 2015, 2:57:46 PM
    Author     : Manusai
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            <%
            
                try{
                
                    String name=request.getParameter("author");
                    String email=request.getParameter("email");
                    String sub=request.getParameter("subject");
                    String text=request.getParameter("text");
                    
                    PreparedStatement ps=con.prepareStatement("insert into contacts values(?,?,?,?)");
                    ps.setString(1, name);
                    ps.setString(2, email);
                    ps.setString(3, sub);
                    ps.setString(4, text);
                    
                    int i=ps.executeUpdate();
                    if(i>0){
                    
                                response.sendRedirect("contact.html");
                    }
                                       else{
                                       
                                                    response.sendRedirect("contact.html");
                                            }
                
                }
                catch(Exception e){
                            e.printStackTrace();
                
                }



%>
    </body>
</html>
