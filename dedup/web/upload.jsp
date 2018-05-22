<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.Date"%>
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
<meta http-equiv="" content="multipart/form-data">
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
    
    <%
    

        String v=request.getParameter("val1");
        if(v!=null){
        
                        out.println("<script>alert('You Have Uploaded File SuccessFully..')</script>");
        
        }

%>
    
    
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
                <li><a href="feedback.jsp">FeedBack</a></li>
                <li><a href="download.jsp">Download</a></li>
                <li><a href="logout.jsp">Logout</a></li>
            </ul>    	
        </div> <!-- end of tooplate_menu -->
    </div> <!-- end of forever header -->
    
                  <%
        

                String na=(String)session.getAttribute("uname");

%>
<%
                
                    
                    DateFormat df=new SimpleDateFormat();
                    Date d=new Date();
                    String tdate=(String)df.format(d);




                    String ss="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
                    
                    String key="";
                    int i=0;
                    
                    Random r=new Random();
                   
                    for(i=0;i<6;i++){
                    
                            key=key+ss.charAt(r.nextInt(ss.length()));
                    }
                    
%>


            


    <div id="tooplate_middle">
    	<div id="mid_slider">
        	    <marquee>
                        <font color="#FFB8FF" face="Monotype corsiva" size="5">
                            Hello&nbsp;<font color="#6666FF"> <%=na%> </font> &nbsp; You Can Upload Files From Here..
                        </font>
                   </marquee>
                   
                   <br></br>
                   
                   <form name="f" action="uploaddb.jsp" method="post" enctype="multipart/form-data">
                   <table border="4">
                       <tr><th><font color="white">User Name</font></th><td><input type="text" name="un" value="<%=na%>" readonly></input></td></tr>
                       <tr><th><font color="white">Security Key</font></th><td><input type="text" name="skey" value="<%=key%>" readonly></input></td></tr>
                       <tr><th><font color="white">Date & Time</font></th><td><input type="text" name="date" value="<%=tdate%>" readonly></input></td></tr>
                       <tr><th><font color="white">File</font></th><td><input type="file" name="file"></input></td></tr>
                       <tr><td><input type="submit" value="Upload"></input></td>
                           <td><input type="reset" value="Cancel"></td>
                       </tr>
                   </table>
                   
                   </form>
                
        </div>
        <div id="mid_left">
            <div id="mid_title">
                    Hello:<%=na%>
            </div>
            
        
    
        
  
        
      
    	
        
                
                  
   
                

                
                <center>
       
                    
                    
                    
                </center>
               
                
                
                
                <br></br>
                
                
                <br></br>
            
              <div class="cleaner"></div>
              </div>
    
    		
</div>

</body>
</html>