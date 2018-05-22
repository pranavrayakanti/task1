<%@page import="java.io.FileInputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="db.jsp" %>
<%


    String down1=request.getParameter("down1");

        
    String tablekey="";
    String tablename="";
    
    
    String path="";
    path=request.getRealPath("file");
    
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from fileuploads where skey='"+down1+"'");
        rs.next();
        
        
        tablekey=rs.getString("SKEY");
        tablename=rs.getString("UFILE");
        
        if(tablekey.equals(down1)){
        
                    response.setContentType("APPLICATION/OCTET-STREAM");
                            response.setHeader("Content-Disposition","attachment;"+"download");
                            
                            FileInputStream fis=new FileInputStream(path+"\\"+tablename);
                            
                            int i;
                            
                            while((i=fis.read())!=-1){
                            
                                        out.write(i);
                                        
                            }
                            fis.close();
        
        }
        
        
        
%>