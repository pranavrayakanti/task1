
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

<%

    String v=request.getParameter("val");
    if(v!=null){
    
                    out.println("<script>alert('Your Password Updated SuccessFully...')</script>");
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
                 <li><a href="index.html" class="current">Home</a></li>
                <li><a href="register.jsp">Register</a></li>
                <li><a href="login.jsp">Login</a></li>
                           </ul>    	
        </div> <!-- end of tooplate_menu -->
    </div> <!-- end of forever header -->
    
  
        <br></br>
    	<center>
        <form name="f" action="chngpwddb.jsp" method="post">
                    
                   <table border="0">
                      <tr><th><font color="white">Enter user id</font></th><td><input type="text" name="ui"></input></td></tr>
                         <tr><th><font color="white">Enter old password</font></th><td><input type="text" name="eop"></input></td></tr>
                         <tr><th><font color="white">Enter new password</font></th><td><input type="text" name="enp"></input></td></tr>
                         <tr><th><font color="white">Confirm new password</font></th><td><input type="text" name="cnp"></input></td></tr>
                          
                                                          </td>
                                              
                         </tr>
                                                      </td></tr>
                         
                         
                         <tr><td>  <input type="submit" value="submit"></input> </td><td>&nbsp;&nbsp; <input type="reset" value="Cancel"></input></td></tr>
                    </table>
                                     
                    
                    
                </form>
                </center>
               
                
                
               
            

</div>

</body>
                    
       
        
        
        
        
    
    	
        
                
                
                
                <center>
        
                </center>
               
                
                
                
         
            
</div>
</html>