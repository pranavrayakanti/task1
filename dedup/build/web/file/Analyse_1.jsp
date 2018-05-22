<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>enterprise - Free CSS Template by ZyPOP</title>
<link rel="stylesheet" href="styles.css" type="text/css" />
<!--
enterprise, a free CSS web template by ZyPOP (zypopwebtemplates.com/)

Download: http://zypopwebtemplates.com/

License: Creative Commons Attribution
//-->
</head>

<body>
<div class="wrapper">
    <div id="container">
        <div id="header">
            <h1><a href="/">Social Media Analysis</a></h1>

        </div>
        <div id="nav">
            <ul>
                <li class="selected"><a href="AdminHome.jsp">Home</a></li>
               	<li><a href="Upload.jsp">Add Product</a></li>
                <li><a href="ViewUsers.jsp">Users</a></li>
                <li><a href="ViewProduct.jsp">Product</a></li>
                <li><a href="Analyse.jsp">Product Analyse</a></li>
                <li><a href="login.jsp">Logout</a></li>
            </ul>
        </div>
        <div id="page-intro">
             </div>
        <div>
            <div id="content">
               	<h2>Welcome to Your Home Page <%=session.getAttribute("uname")%></h2>
                 
                <form action="" method="post">
                    <table>
                        <tr>Enter the Company Name:<select style="width: 300px" name="Company" >
                                <option value="Micromax">Micromax</option>
                                <option value="moto">Moto</option>
                            </select></tr>

                      <tr><td><input type="submit" value="Analyse" style="width: 150px"/></td>
                          </tr>
                  </form>
                  </table>
            </div>


            <div></div>
        </div>
    </div>
    <div>

    </div>
</div>
</body>
</html>
