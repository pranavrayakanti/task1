<%-- 
    Document   : chngpwddb
    Created on : Jan 23, 2015, 3:42:46 PM
    Author     : Manusai
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="db.jsp" %>
        
        <%
            
        String tablepass="";
        String tableid="";
        
        String id=request.getParameter("ui");
        String oldpwd=request.getParameter("eop");
        String newpwd=request.getParameter("enp");
        String confirmpwd=request.getParameter("cpn");
        
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select * from REGISTRATION where USER_ID='"+id+"'");
           if(rs.next()){
               
               tableid=rs.getString(1);
               tablepass=rs.getString(3);     
               
                if(id.equals(tableid)){
                
                    PreparedStatement ps=con.prepareStatement("update REGISTRATION set PASSWORD='"+newpwd+"' where USER_ID='"+id+"'"); 
                        int i=ps.executeUpdate();
                        if(i>0){
                        
                                        response.sendRedirect("chngpwd.jsp?val=1");
                        
                        }
                                               else{
                                                            response.sendRedirect("chngpwd.jsp");
                                               
                                               }
                }
           
           }
        
        %>
        
        
        
        
        
        
    </body>
</html>
