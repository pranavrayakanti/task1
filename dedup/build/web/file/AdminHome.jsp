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
            <h1><a href="/">Fraud Detection</a></h1>

        </div>
        <div id="nav">
            <ul>
                <li><a href="AdminHome.jsp">Home</a></li>
               	<li><a href="Upload.jsp">Add Product</a></li>
                <li><a href="ViewUsers.jsp">Users</a></li>
                <li><a href="ViewProduct.jsp">Product</a></li>
                <li><a href="viewseller.jsp">Seller</a></li>
                <li><a href="viewtransaction.jsp">Transaction</a></li>
                
                <li><a href="viewfeedback.jsp">View Feedback</a></li>
                <li><a href="login.jsp">Logout</a></li>
            </ul>
        </div>
        <div id="page-intro">
             </div>
        <div id="body">
            <div id="content">
               	<h2>Welcome to Your Home Page <%=session.getAttribute("uname")%></h2>
                    <table border="2" cellpadding="5" cellspacing="5">
                    <tr><form action="Upload.jsp" method="post">
                    <td><input type="submit" value="Upload Product"/></td></form></tr>
                        <tr><form action="ViewUsers.jsp" method="post">
                    <td><input type="submit" value="User Details"/></td></form></tr>
                        <tr><form action="ViewProduct.jsp" method="post">
                    <td><input type="submit" value="Product Details"/></td></form></tr>

                        
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
