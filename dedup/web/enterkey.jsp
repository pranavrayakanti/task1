<%-- 
    Document   : enterkey
    Created on : Feb 3, 2015, 5:46:16 PM
    Author     : Manusai
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%-- 
    Document   : download
    Created on : Feb 3, 2015, 5:39:14 PM
    Author     : Manusai
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- 
	Template 2047 Brown Field
	by www.tooplate.com 
-->
<title>Brown Field Template</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />

		<script type="text/javascript" src="js/swfobject.js"></script>
		<script type="text/javascript">
			var flashvars = {};
			flashvars.xml_file = "photo_list.xml";
			var params = {};
			params.wmode = "transparent";
			var attributes = {};
			attributes.id = "slider";
			swfobject.embedSWF("flash_slider.swf", "flash_grid_slider", "440", "220", "9.0.0", false, flashvars, params, attributes);
		</script>    
</head>
<body>

<div id="tooplate_wrapper">

	<div id="tooplate_header">
        <div id="site_title">
        	<h1><a href="#">Brown Field</a></h1>
        </div>
        <div id="tooplate_menu">
            <ul>
                <li><a href="userhome.jsp" class="current">Home</a></li>
                <li><a href="upload.jsp">Upload</a></li>
                   <li><a href="vallfile.jsp">vallfiles</a></li>
                <li><a href="feedback.jsp">FeedBack</a></li>
                <li><a href="download.jsp">Download</a></li>
                <li><a href="myreq.jsp">My Requests</a></li>
                <li><a href="logout.jsp">Logout</a></li>
            </ul>    	
        </div> <!-- end of tooplate_menu -->
    </div> <!-- end of forever header -->
        <%
        

                String na=(String)session.getAttribute("uname");
                String email=(String)session.getAttribute("email");
                
%>


    
    <div id="tooplate_middle">
        <div class="con_tit_01"><font color="white">Hello:<font><font color="white"face="technical"> &nbsp;<%=na%> </div></font>
        
                    <center>
                        <form name="f" action="enterkey.jsp" method="post">
                        Search For A File:<input type="text" name="down"></input>
                        <input type="submit" value="Download"></input>
                        </form>
                    </center>
                    
                    <center>
                        
                        <table border="2">
                            <tr><th>Uploaded By</th><th>File Name</th><th>Download</th></tr>
                            
                            
                        <%@include file="db.jsp" %>
                        <%
                        String down=request.getParameter("down");
                        if(down!=" "){
                        Statement st=con.createStatement();
                        
                        ResultSet rs=st.executeQuery("select * from fileuploads where ufile='"+down+"'");
                        if(rs.next()){
                        
                                        
                            %>
                        
                            
                            <tr>
                                <td><%=rs.getString(1)%></td>
                                <td><%=rs.getString(4)%></td>
                                <td><a href="down.jsp?uname=<%=rs.getString(1)%>&fname=<%=rs.getString(4)%>&skey=<%=rs.getString(2)%>">Download</a></td>
                            </tr>
                            
                            <%
                        
                        }
}
%>
                    </center>
                    
                    
                    
        </div>
            
        <div id="mid_left">
            <div id="mid_title">
                	
            </div>
            
            <
	  	</div>
        <div class="cleaner"></div>
	</div> <!-- end of middle -->
    
        
        
      
   
            
                
                
                
                
                <center>
       
                </center>
               
                
                
             
</div>

</body>
</html>