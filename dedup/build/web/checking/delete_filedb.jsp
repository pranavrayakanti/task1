<%-- 
    Document   : delete_filedb
    Created on : Mar 24, 2014, 2:52:52 PM
    Author     : Venkatesh
--%>
<%@page import="java.sql.*"%>
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
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","webforum","webforum");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from htmfil");
while(rs.next())
       {
String fname=rs.getString(1);
out.println(fname);
 PreparedStatement pst=con.prepareStatement("delete from htmfil where fname='"+fname+"'" );
 
 pst.execute();
 
 out.println("file successfully deleted");
response.sendRedirect("viewdata.jsp");
}
        %>
    </body>
</html>
