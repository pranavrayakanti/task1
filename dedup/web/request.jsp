<%-- 
    Document   : request
    Created on : Feb 3, 2015, 3:53:30 PM
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
                
                    String username=request.getParameter("username");
                    String fname=request.getParameter("fname");
                    System.out.println("val is:"+fname); 
                    String requsr=request.getParameter("requsr");
                    String key=request.getParameter("key");
                    String email=(String)session.getAttribute("email");
                    
                     PreparedStatement ps=con.prepareStatement("insert into request values(?,?,?,?,?)");
                     ps.setString(1, username);
                     ps.setString(2, fname);
                     System.out.println(fname); 
                     ps.setString(3, requsr);
                     ps.setString(4, key);
                     ps.setString(5, email);
                     
                     int i=ps.executeUpdate();
                     if(i>0){
                         response.sendRedirect("sent.jsp");
                     
                     }
                                         else{
                                                    response.sendRedirect("vallfile.jsp");
                                         
                                         
                                         }

                     
%>
    </body>
</html>
