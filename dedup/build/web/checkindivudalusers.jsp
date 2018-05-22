<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
                  <li><a href="adminhome.jsp">adminhome</a></li>
                   <li><a href ="viewfeedback.jsp">View feedback</a></li>
                <li><a href ="viewusers.jsp">Viewusers</a></li>
              <li><a href="logout.jsp">Logout</a></li>
            </ul>    	
        </div> <!-- end of tooplate_menu -->
    </div> <!-- end of forever header -->
    
    <%@include file="db.jsp" %>
       
        <!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>View users</title>
    </head>
    </body>
    <center>
    
    
        <form name="f" action="checkindivudalusers.jsp" method="post">
                           
            <tr><td> <input type="text" name="search"  value=""></input>
            <tr> <td> <input type="submit" value="search"></input>          
            
        </form>
        
        <br></br>
        
        <table border="5">
            <tr><th><font color="white">User ID</font></th>
                <th><font color="white">username</font></th>
                <th><font color="white"> email</font></th>                  
                <th><font color="white">mobileno</font></th>
                <th><font color="white">DOB</font></th>
                <th><font color="white">gender</font></th>
            
            </tr>
        <%
        
                String search=request.getParameter("search");
                if(search!=" "){
                
                
                                Statement st=con.createStatement();
                                ResultSet rs=st.executeQuery("select * from REGISTRATION where USER_ID='"+search+"'");
                                if(rs.next()){
                                    
                                    %>
            
            
                                    <tr><td><font color="white"> <%=rs.getString(1)%></font></td>
                                        <td><font color="white"> <%=rs.getString(2)%></font></td>
                                        <td><font color="white"> <%=rs.getString(5)%></font></td>
                                        <td><font color="white"><%=rs.getString(7)%></font></td>
                                        <td><font color="white"><%=rs.getString(6)%></font></td>
                                        <td><font color="white"><%=rs.getString(10)%></font></td>
                                    </tr>
            
            
            
            <%
                                    
                                
                                }
                
                }



%>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    </center>
  