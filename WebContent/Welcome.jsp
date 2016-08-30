<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Product" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to Vcart</title>
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
		<div id="user">Welcome <%=session.getAttribute("username")%></div>
		<div id="logo">
			<h1><a href="/" id="logoLink">Welcome to &nbsp; &nbsp;<img alt="Vmart_Logo" height="60" src="Vmart_Logo.jpg">cart !! </a></h1>
		</div>
		<div id="nav">
			<ul>
				<li><a href="#/Welcome.jsp">Home</a></li>
				<li><a href="about.jsp">About</a></li>
				<li><a href="contact.jsp">Contact</a></li>
			</ul>	
		</div>
		<hr>
		<div id="content">
			<h2>Home</h2>
			<p>
				This is my first webpage! I was able to code all the HTML and CSS in order to make it. Watch out world of web design here I come!
			</p>
			<p> 
				Vcart is your one step solution to shop everything you need.
				You can add,delete,view items from your cart.
			</p>
			<a href="Products.jsp"><h2>Populate Product List</h2></a>
			<br><br>
			<%  
				List<Product> list = (ArrayList<Product>) session.getAttribute("productList");
			%>
			<center><button type="submit" id="add_button" value="Add to Cart">Add to Cart</button></center>
			<table background="grey" align="center" border="4" bgcolor="#eee" cellpadding="3">
				<tr>
					<th>Select</th>
					<th>Product</th>
					<th>Price</th>
				</tr>
				<%
  				for(Product product : list) { %>
   				 <tr>
   				 	 <td><input type="radio" id="radio_prod" value="">
     				 <td><%out.println(product.getProductName());%></td>
     				 <td align="right"><%out.println(product.getProductPrice());%></td>
     				<!--  <td><a href="#"><font color="blue">Add to Cart</font></a></td> -->
     				<%} %>
    			</tr>
			</table>
		</div>
		<div id="footer">
			<p>
				Webpage made by <a href="/" target="_blank"><strong>[Vivek Pateriya]</strong></a>
			</p>
		</div>
	</div>
</body>
</html>