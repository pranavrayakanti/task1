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
<script>
    function pass()
    {
        
    
    var a=document.f.pwd.value;
    var b=document.f.cpwd.value;
    if(a!==b)
        {
            alert("password not matched");
            return false;
        }
        else
            {
                return true;
            }
    }
    
</script>

</head>

		
<body>

<div id="tooplate_wrapper">

	<div id="tooplate_header">
        <div id="site_title">
          <font face="Antique Olive" color="white" size="6em">TRAVELER REGISTERATION </font>
                
            
            
            
            
        </div>
        <div id="tooplate_menu">
            <ul>
                 <li><a href="index.jsp" class="current">Home</a></li>
                <li><a href="register.jsp">Register</a></li>
                <li><a href="login.jsp">Login</a></li>
               
            </ul>    	
        </div> <!-- end of tooplate_menu -->
    </div> <!-- end of forever header -->
    
  
        <br></br>
    	<center>
        <form name="f" action="registerdb.jsp" method="post" onsubmit="return pass()">
                    
                   <table border="0">
                      
                         <tr><th><font color="white">User ID</font></th><td><input type="text" name="ui" required="required"></input></td></tr>
                         <tr><th><font color="white">User Name</font></th><td><input type="text" name="un"required="required"></input></td></tr>
                         <tr><th><font color="white">Password</font></th><td><input type="password" name="pwd"required="required"></input></td></tr>
                         <tr><th><font color="white">Confirm-Password</font></th><td><input type="password" name="cpwd"required="required"></input></td></tr>
                         <tr><th><font color="white">Email</font></th><td><input type="email" name="mail"required="required"></input></td></tr>
                         <tr><th><font color="white">Date of birth</font></th><td><input type="date" name="dob"required="required"></input></td></tr>
                                                 <tr><th><font color="white">Security Question </font></th><td><select name="que" required="true">
                             <option value="what is your fav color">><font color="white"> what is your fav color</font></option>
                             <option value="what is your lucky number"><font color="white"> what is your lucky number</font></option>
                             <option value="what is your fav bike"><font color="white"> what is your fav bike</font></option>
                             </td>
                                              
                         </tr>
                         <tr><th><font color="white">Answer</font></th><td><input type="text" name="ans"required="required"></td></tr>
                         <tr><th><font color="white">Gender</font></th><td><input type="radio" name="g" value="male"><font color="white">Male</font>
                                                                           <input type="radio" name="g" value="female"><font color="white"> Female</font>
                             </td></tr>
                         
                         
                         <tr><td>  <input type="submit" value="Register"></input> </td><td>&nbsp;&nbsp; <input type="reset" value="Cancel"></input></td></tr>
                    </table>
                                     
                    
                    
                </form>
                </center>
               
                
                
               
            

</div>

</body>
                    
       
        
        
        
        
    
    	
        
                
                
                
                <center>
        
                </center>
               
                
                
                
         
            
</div>
</html>