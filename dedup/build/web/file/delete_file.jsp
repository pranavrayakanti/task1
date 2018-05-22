<!DOCTYPE html>
<html lang="en">
<head>
    <title>Web Forums</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/grid.css" type="text/css" media="screen">
<script src="js/jquery-1.7.1.min.js"></script>
<script src="js/cufon-yui.js"></script>
<script src="js/cufon-replace.js"></script>
<script src="js/Vegur_500.font.js"></script>
<script src="js/Ropa_Sans_400.font.js"></script>
<script src="js/FF-cash.js"></script>
<script src="js/tms-0.3.js"></script>
<script src="js/tms_presets.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/script.js"></script>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
<![endif]-->
</head>
<body id="page1">
<!--==============================header=================================-->
<header>
  <div class="border-bot">
    <div class="main">
      <h1></h1>
      <nav>
        <ul class="menu">
          <li><a href="adminlogin.jsp">Home</a></li>
          <li><a href="upload1.jsp">Upload Files</a></li>
          <li><a href="viewdata.jsp">View Files</a></li>
          <li><a href="viewcomment.jsp">View Comments</a></li>
          <li><a class="active" href="delete_file.jsp">Delete Files</a></li>
           <li><a href="logout.jsp">Logout</a></li>
        </ul>
      </nav>
      <div class="clear"></div>
    </div>
  </div>
  <div class="row-bot">
    <div class="slider-wrapper">
      <div class="slider">
        <ul class="items">
          <li> <img src="images/slider-img1.jpg" alt=""> </li>
          <li> <img src="images/slider-img2.jpg" alt=""> </li>
          <li> <img src="images/slider-img3.jpg" alt=""> </li>
        </ul>
      </div>
    </div>
  </div>
</header>
<!--==============================content================================-->
<section id="content">
  <div class="main">
    <div class="container_12">
      <div class="wrapper">
        <article class="grid_8">
         <center>
              <%
               //String name=session.getAttribute("name").toString();
               out.println("<font color='black' size='5'>Welcome Admin</font>");
              %>
<br/><br/><br/>
              <%
    
String a=request.getParameter("a");
if(a!=null)
   {
       out.println("<font color='black' size='5'>"+a+"</font>");
    }
%> 
 <table border="1" >
<caption>File Details</caption>
    <tr><th>File Path</th><th>File Name</th><th>Select</th></tr>
<%@page import="java.sql.*"%>
    <%
             Class.forName("oracle.jdbc.driver.OracleDriver");
             Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","webforum","webforum");
             Statement st=con.createStatement();
                       
             String ip_add=request.getRemoteAddr();
                   
             ResultSet rs=st.executeQuery("select * from htmfil");
             while(rs.next())
             {
             %>
             <tr><td><%=rs.getString(1)%></td><td><%=rs.getString(4)%></td>
             <td><a href="delete_filedb.jsp?a=<%=rs.getString(1)%>">Delete</a></td></tr>
             <%
             }
             con.close();  
             %>
            </table>   
       </center>
         
          <div class="wrapper">
            <div class="grid_4 alpha">
           
          </div>
        </article>
        <article class="grid_4">
          <div class="indent-top indent-left">
            <div class="wrapper margin-bot">
              <figure class="img-indent-r"><a href="#"><img src="images/page1-img1.png" alt=""></a></figure>
              <div class="extra-wrap"> 
                 
              </div>
            </div>
            <h3>Latest News</h3>
            <time class="tdate-1" datetime="2014-03-11,2014</time>
            <p class="prev-indent-bot"></p>
            <p><a href="#"></a></p>
            <a class="link-1" href="#"></a> </div>
        </article>
      </div>
    </div>
  </div>
</section>
<!--==============================footer=================================-->
<footer>
  <div class="main">
    <div class="container_12">
      <div class="wrapper">
        <div class="grid_3">
          <div class="spacer-1"> <img  alt=""></a> </div>
        </div>
         </div>
      </div>
    </div>
  </div>
</footer>
<script>Cufon.now();</script>
<script>
$(window).load(function() {
	$('.slider')._TMS({
		duration:1000,
		easing:'easeOutQuint',
		preset:'diagonalFade',
		slideshow:7000,
		banners:false,
		pauseOnHover:true,
		pagination:true,
		pagNums:false
	});
});
</script>
</body>
</html>




