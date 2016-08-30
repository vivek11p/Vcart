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
		
		<div id="content">
			<h2>About Us</h2>
			<p>
				We are a bunch of Java enthusiasts.
			</p>
			<p> 
				I can use my skills here to create websites for my business, my friends and family, my C.V, blog or articles. As well as any games or more experiment stuff (which is what the web is really all about). 
			</p>
		</div>
		<div id="footer">
			<p>
				Webpage made by <a href="/" target="_blank"><strong>[Vivek Pateriya]</strong></a>
			</p>
		</div>
	</div>
</body>
</html>