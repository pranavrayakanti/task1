<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- 
	Template 2047 Brown Field
	by www.tooplate.com 
-->
<title>CLOUD</title>
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
                 <li><a href="index.html" class="current">Home</a></li>
                <li><a href="register.jsp">Register</a></li>
                <li><a href="login.jsp">Login</a></li>
                <li><a href="gallery.html">Gallery</a></li>
                <li><a href="contact.html">Contact</a></li>
            </ul>    	
        </div> <!-- end of tooplate_menu -->
    </div> <!-- end of forever header -->
    
  
        <br></br>
    	<center>
            
             <%
        

                String na=(String)session.getAttribute("uname");

%>
            
        <form name="f" action="feedbackdb.jsp" method="post">
                    
                   <table border="1">
                      
                        
                       <tr><th><font color="white">User Name</font></th><td><input type="text" name="un" value="<%=na%>"></input></td></tr>                      
                       <tr><th><font color="white">Opinion</font></th><td><input type="radio" name="opinion" value="good"> Good
                                   <input type="radio" name="opinion" value="bad">Bad
                                       <input type="radio" name="opinion" value="worst">Worst
                                           
                           
                           </td></tr> 
                       <tr><th><font color="white">FeedBack</font></th><td><textarea cols="15" rows="7" name="feed"></textarea></td></tr>
                       <tr><td><input type="submit" value="Submit"></td>
                           <td><input type="reset" value="Cancel"></td>
                       </tr>
                       
                   </table>
                                     
                    
                    
                </form>
                </center>
               
                
                
               
            

</div>

</body>
                    
       
        
        
              
    
    	
        
                
                
             
                
                
                
         
            
</div>
</html>