<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About Us</title>
	<meta name="author" content="your name" />
	<meta name="description" content="" />
	<link rel="stylesheet" href="style.css" type="text/css" />
</head>
<body>
<div id="blank_welcome">
</div>
<div id="page"> 
		<div id="logout_button">
		<form action="logoutServlet" method="get">
			<button type="submit" value="logout">Logout</button>
		</form>
		</div>
		<div id="logo">
			<h1><a href="/" id="logoLink">Welcome to &nbsp; &nbsp;<img alt="Vmart_Logo" height="60" src="Vmart_Logo.jpg">cart !! </a></h1>
		</div>
		<div id="nav">
			<ul>
				<li><a href="Welcome.jsp">Home</a></li>
				<li><a href="#/about.jsp">About</a></li>
				<li><a href="contact.jsp">Contact</a></li>
			</ul>	
		</div>
		<div id="con">
			Contact
		</div>
		<br>
		<hr id="blank_line">
		<div id="content">
			If you have a question about a Vcart site, the best place to ask is on Vcart Exchange or the site's own meta. (Look under "help" on the top bar.)
			You might find these links useful:
			<br><br><br>
			<img alt="Facebook" src="fb.jpg" height="30">
			<a href="http://www.facebook.com">&nbsp;<font color="purple">Facebook Help Center</font></a>
			<br><br>
			<img alt="Yahoo" src="yahoo.jpg" height="30">
			<a href="http://www.yahoomail.com">&nbsp;<font color="purple">Yahoo Help Central</font></a>
			<br><br>
			<img alt="Google" src="google.jpg" height="30">
			<a href="http://www.google.com">&nbsp;<font color="purple">Google Contact</font></a>
		</div>
		<div id="footer">
			<p>
				Webpage made by <a href="/" target="_blank"><strong>[Vivek Pateriya]</strong></a>
			</p>
		</div>
	</div>
</body>
</html>