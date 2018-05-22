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
                  <li><a href="viewcontacts.jsp">view contacts</a></li>
                     <li><a href="viewfiles.jsp">view files</a></li>
                <li><a href="viewusers.jsp">view users</a></li>
                <li><a href ="viewfeedback.jsp">View feedback</a></li>
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
    <table border="2" 
         <table style="width:100%" bgcolor="#F0F5FF" >    
         <th>User name </th>
        
         <th>Email</th>
         <th>Subject</th>
       <th>Message</th>
         
           
           
           
           
     <%
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select * from CONTACTS");
                while(rs.next())
                                       {
                    %>

                    <tr>
                        <td><%=rs.getString(1)%></td>
                            <td><%=rs.getString(2)%></td>
                       <td><%=rs.getString(3)%></td>
                        <td><%=rs.getString(4)%></td>
                   
                    </tr>
    
    
    
    
    <%
                   
                    
                    
                            
                }
                

                        %>
    </table>
        </center>
  