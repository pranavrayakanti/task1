<%-- 
    Document   : registerdb
    Created on : Jan 7, 2015, 3:18:45 PM
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
                            
                            
                            String id=request.getParameter("ui");
                            String name=request.getParameter("un");
                            String pass=request.getParameter("pwd");
                            String Cpass =request.getParameter("cpwd");
                            String Email=request.getParameter("mail");
                            String Dob=request.getParameter("dob");
                            String Mobileno=request.getParameter("mn");
                            String Securityq=request.getParameter("que");
                            String ans=request.getParameter("ans");
                            String gen=request.getParameter("g");
                            
                            
                            
                            
                            
                            PreparedStatement ps=con.prepareStatement("insert into REGISTRATION values(?,?,?,?,?,?,?,?,?,?)");
                            
                            
                            
                            ps.setString(1, id);
                            ps.setString(2, name);
                            ps.setString(3,pass);
                            ps.setString(4,Cpass);
                            ps.setString(5,Email);
                            ps.setString(6,Dob);
                            ps.setString(7,Mobileno);
                            ps.setString(8,Securityq);
                            ps.setString(9,ans);
                            ps.setString(10,gen);
                            int i=ps.executeUpdate();
                            
                            
                            if(i>0){
                            
                                            response.sendRedirect("login.jsp");
                            
                            }
                                                       else{
                                                       
                                                            response.sendRedirect("register.jsp");
                                                       
                                                       }
                            
                            
                        }
                        catch(Exception e)
                                                               {
                        
                                                               e.printStackTrace();
                                                               
                        }


%>
    </body>
</html>
