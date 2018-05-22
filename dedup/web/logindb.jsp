<%-- 
    Document   : logindb
    Created on : Jan 8, 2015, 2:05:28 PM
    Author     : Manusai
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
                        
                            String name=request.getParameter("un");
                            String pwd=request.getParameter("pwd");
                            String type=request.getParameter("type");
                            if(type.equals("user")){
                           Statement st=con.createStatement();
                           ResultSet rs=st.executeQuery("select * from REGISTRATION where USER_NAME='"+name+"' and PASSWORD='"+pwd+"'");
                           if(rs.next()){
                               
                             
                               
                               session.setAttribute("uname", name);
                               String email=rs.getString(5);
                               session.setAttribute("email", email); 
                           response.sendRedirect("userhome.jsp");
                           
                           }
                                                     else{
                                                     
                                                            response.sendRedirect("login.jsp");
                                                            
                                                     }
                           
                                                      }
                                                       else{
                                                       
                                                        Statement st1=con.createStatement();
                                                        ResultSet rs1=st1.executeQuery("select * from ADMIN where NAME='"+name+"' and PASSWORD='"+pwd+"'");
                                                        if(rs1.next()){
                                                        
                                                        
                                                                response.sendRedirect("adminhome.jsp");
                                                        
                                                        }
                                                                                                               else{
                                                                                                                response.sendRedirect("login.jsp");
                                                                                                               
                                                                                                               }
                                                       
                                                       }
                                                       }
                        catch(Exception e)
                                
                        {
                                e.printStackTrace();
                                
                        }


%>
    </body>
</html>
