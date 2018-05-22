<%@include file="userheader.jsp" %>
<%-- 
    Document   : addlocation
    Created on : Jan 3, 2015, 11:15:34 AM
    Author     : Administrator
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="dbcon.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="addlocationadminappr.jsp" method="get">
            <br><br><br><br><br><br><br><br>
            <center>
                
                Add&nbsp;Location&nbsp;<select name="loc" style="color: brown">
                    <%
                PreparedStatement ps=con.prepareStatement("select DISTINCT location from IPADDRESS");
                ResultSet rs=ps.executeQuery();
                while(rs.next()){
%>
<option style="color: black"value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
<%}%>
                </select>
                    <br><br>
                    Add&nbsp;Place&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="place" required="true"><br><br>
                Add&nbsp;Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" required="true" name="type"><br><br>
                Add&nbsp;Description&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea type="text" required="true" name="desc"></textarea><br><br>
                Add&nbsp;Contact Info&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="cont" required="true"><br><br>
                Add&nbsp;Website&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="webs" required="true"><br><br>
                
                
                <input id="clo" type="submit" value="submit">
            </center>
        </form>
    </body>
</html>

<%@include file="footer.jsp" %>