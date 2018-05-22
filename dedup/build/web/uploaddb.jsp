<%-- 
    Document   : uploaddb
    Created on : Jan 19, 2015, 2:46:17 PM
    Author     : Manusai
--%>

<%@page import="java.io.FileInputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>
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
                                
                                String readfile="";
                                String getpath="";
                                
                                
                                
                                String s4="";
                                
                                DiskFileItemFactory dfif=new DiskFileItemFactory();
                                ServletFileUpload sfu=new ServletFileUpload(dfif);
                                List l=sfu.parseRequest(request);
                                
                                FileItem fi=(FileItem)l.get(0);
                                FileItem fi1=(FileItem)l.get(1);
                                FileItem fi2=(FileItem)l.get(2);
                                FileItem fi3=(FileItem)l.get(3);
                                
                                System.out.println("File Written");
                                
                                
                                String s=fi.getString();// name
                                
                                String s1=fi1.getString();// key
                                String s2=fi2.getString(); // date & time
                                
                                String s3=fi3.getName(); // file
                                
                                String path1=request.getRealPath("checking")+"\\"+s3;
                                fi3.write(new File(path1));
                                
                                String path=request.getRealPath("file")+"\\"+s3;
                                fi3.write(new File(path)); //file written
                                // current file data in string format
                                System.out.println("files:"+path +" "+path1);
                                byte[] b=fi3.get();
                                String string=new String(b);
                                System.out.println("values is:"+string);
                                
                                //check from db if it is a first file or not
                                Statement st=con.createStatement();
                                ResultSet rs=st.executeQuery("select count(*) from fileuploads");
                                int count=0;
                                if(rs.next())
                                {
                                    count=rs.getInt(1);
                                }
                                if(count==0)//first row
                                {
                                    PreparedStatement ps=con.prepareStatement("insert into fileuploads values(?,?,?,?,?)");
                                ps.setString(1, s);
                                ps.setString(2, s1);
                                ps.setString(3, s2);
                                ps.setString(4, s3);
                                ps.setString(5, string);
                                int i=ps.executeUpdate();
                                response.sendRedirect("upload.jsp?val1=1");
                                }
                                else //second row onwards
                                {
                                   //when data is repeated
                                   ResultSet rs12=st.executeQuery("select * from fileuploads where data='"+string+"'");
                                   if(rs12.next()) // if row with same data
                                   {
                                       String fname=rs12.getString(4);
                                       if(fname.equals(s3)) // file name also same
                                       {
                                           System.out.println("Do notheing");
response.sendRedirect("already.jsp");                                                                                                                               
                                       }
                                       else //when file name is different
                                       {
                                        response.sendRedirect("already.jsp"); 
                                       }
                                   }
                                   ResultSet rs11=st.executeQuery("select * from fileuploads where ufile='"+s3+"'");
                                   if(rs11.next()) //exists in the db
                                   {
                                       String data=rs11.getString(5);
                                       String npath=request.getRealPath("checking")+"\\"+s3;
                                       fi3.write(new File(npath));
                                       System.out.println("file written");//to check the content
                                       FileInputStream fiss=new FileInputStream(npath);
                                       byte[] b1=new byte[fiss.available()];
                                       fiss.read(b1);
                                       String dat=new String(b1);
                                       //checking if the file content is same
                                       if(data.equals(dat)) 
                                       {
                                           System.out.println("Do nothing");                                                                          
                                       }  
                                       else //data not same but file name is same
                                       {
                                           String key=s1+"LQ";
                                           String fname=s3+"_"+count;
                                           Statement st1=con.createStatement();
                                           st1.executeUpdate("insert into fileuploads values('"+s+"','"+key+"','"+s2+"','"+fname+"','"+dat+"')");
                                           response.sendRedirect("upload.jsp?val1=1");
                                       }                                                                                                                                                                                                                                                                                                                      
                                   }
                                   else //if not exists in DB
                                   {
                                       System.out.println("coming here");
                                       String npath=request.getRealPath("checking")+"\\"+s3;
                                       FileInputStream fiss=new FileInputStream(npath);
                                       byte[] b1=new byte[fiss.available()];
                                       fiss.read(b1);
                                       String dat=new String(b1);
                                       boolean bo=false;
                                       ResultSet rsq=st.executeQuery("select * from fileuploads where data='"+dat+"'");
                                       while(rsq.next())
                                       {
                                           bo=true;
                                       }
                                       if(bo==false)//unique data unique file
                                       {
                                           Statement st1=con.createStatement();
                                           st1.executeUpdate("insert into fileuploads values('"+s+"','"+s1+"','"+s2+"','"+s3+"','"+dat+"')");
                                           response.sendRedirect("upload.jsp?val1=1");
                                       }
                                   }                                                                                                           
                                     
                                }
                             }
catch(Exception ee)
{
    ee.printStackTrace();
}

%>
    </body>
</html>
