<%-- 
    Document   : ignore
    Created on : Feb 4, 2015, 4:07:01 PM
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
                
                String skey=request.getParameter("skey");
                
                PreparedStatement ps=con.prepareStatement("delete from REQUEST where KEY='"+skey+"'");
                int i=ps.executeUpdate();
                if(i>0){
                
                                response.sendRedirect("myreq.jsp");
                
                }
                               else{
                                            response.sendRedirect("myreq.jsp");
                               
                               }


%>
    </body>
</html>
