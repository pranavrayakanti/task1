<%-- 
    Document   : db
    Created on : Jan 7, 2015, 3:19:00 PM
    Author     : Manusai
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                        <%
                        

                                Class.forName("oracle.jdbc.driver.OracleDriver");
                                Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","dedup","dedup");


%>
    </body>
</html>
