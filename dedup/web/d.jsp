<%-- 
    Document   : down
    Created on : Jan 6, 2015, 11:38:02 PM
    Author     : surya
--%>

<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
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
                
                    String uid=request.getParameter("dkey");
                
                    String fileid="";
                    String filename="";
                    
                    String path="";
                    path="c:\\Users\\surya\\Documents\\NetBeansProjects\\fileupload_and_download\\build\\web\\afile\\";
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select * from FILES where SKEY='"+uid+"'");
                    
                    rs.next();
                    
                    fileid=rs.getString(2);
                    filename=rs.getString(1);
                    
                    
                    if(fileid.equals(uid)){
                    
                            response.setContentType("APPLICATION/OCTET-STREAM");
                            response.setHeader("Content-Disposition","attachment;"+"download");
                            
                            FileInputStream fis=new FileInputStream(path + filename);
                            
                            int i;
                            while((i=fis.read())!=-1){
                            
                                out.write(i);
                                
                            }
                            fis.close();
                    
                    }
                            


%>
    </body>
</html>
