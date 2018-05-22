<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- 
	Template 2047 Brown Field
	by www.tooplate.com 
-->
<title>Brown Field</title>
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
                <li><a href="feedback.jsp">FeedBack</a></li>
                <li><a href="download.jsp">Download</a></li>
                <li><a href="logout.jsp">Logout</a></li>
            </ul>    	
        </div> <!-- end of tooplate_menu -->
    </div> <!-- end of forever header -->
    
    <div id="tooplate_middle">
        <br></br>
    	<center>
            <%
        

                String na=(String)session.getAttribute("uname");

%>    
<font color="white">
    File Uploaded By &nbsp; <font color="red"><%=na%></font> &nbsp; Uploaded SuccessFully..
</font>
            
            
        </center>
        
        
        
<a href="upload.jsp">Click Here TO Upload Again</a>
    
    	
        
                
                
                
                <center>
        
                </center>
               
                
                
                
         
            
</div>

</body>
</html>