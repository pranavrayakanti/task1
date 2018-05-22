<%@page import="java.sql.PreparedStatement"%>
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
                        String tans="";
                        String tp="";
                
                        
                        String id=request.getParameter("ui");
                        String name=request.getParameter("un");
                        String que=request.getParameter("que");
                        String ans=request.getParameter("ans");
                        
                       Statement st=con.createStatement();
                       ResultSet rs=st.executeQuery("select * from REGISTRATION");
                       while(rs.next()){
       
                        tans=rs.getString(9);
                        tp=rs.getString(3);
                        
                        if(tans.equals(ans)){
                        
                                    response.sendRedirect("urpwd.jsp?val="+tp);
                        
                        
                        }
                              }
       
%>
    </body>
</html>
