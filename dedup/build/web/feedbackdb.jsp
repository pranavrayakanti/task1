<%-- 
    Document   : feedbackdb
    Created on : Jan 20, 2015, 3:34:35 PM
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
        

                String na=(String)session.getAttribute("uname");

%>
            
        
                    <%
                    
                            try{
                                
                                
                                    String opinion=request.getParameter("opinion");
                                    String feed=request.getParameter("feed");
                                    PreparedStatement ps=con.prepareStatement("insert into feedback values(?,?,?)");
                                    ps.setString(1, na);
                                    ps.setString(2, opinion);
                                    ps.setString(3, feed);
                                    
                                    int i=ps.executeUpdate();
                                    if(i>0){
                                    
                                                        response.sendRedirect("feedback.jsp");
                                    }
                                    else
                                                                               {
                                                                                    response.sendRedirect("feedback.jsp");
                                    
                                    }
                            }
                            catch(Exception e)
                                                                       {
                                                                        e.printStackTrace();
                                                                        
                            
                            }


%>
    </body>
</html>
