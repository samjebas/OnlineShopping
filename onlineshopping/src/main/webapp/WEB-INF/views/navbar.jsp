<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="index">MobileBazar</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="index">Home</a></li>
			<c:if test="${!sessionScope.loggedIn}">

				
				<li><a href="product">Products</a></li>
				<li><a href="contact">Contact Us</a></li>
				

				<li><a href="signup"><span class="glyphicon glyphicon-user"></span>
						Sign Up</a></li>
				<li><a href="Login"><span
						class="glyphicon glyphicon-log-in"></span>Login</a></li>
			</c:if>
			<c:if test="${sessionScope.loggedIn}">
					<c:if test="${sessionScope.role=='ADMIN'}">
						
						<li><a href="product">MANAGE PRODUCT</a></li>
						<li><a href="Admin">MANAGE CATEGORY</a></li>
						<li><a href="crud">UPDATE PRODUCT</a></li>
					</c:if>
					<c:if test="${sessionScope.role=='USER'}">
					
						<li><a href="<c:url value="/productPage"/>">Products</a></li>
					</c:if>
				</c:if>
			</ul>

			<div class="nav nav-bar navbar-right">
				<c:if test="${sessionScope.loggedIn}">
					<a href="<c:url value="/showCart"/>"> <span
						class="glyphicon glyphicon-shopping-cart"></span>
					</a>
					<font color="White" face="calibri" size='3'>${CartItems}&nbsp;Welcome
						${sessionScope.username}</font>
					<a href="perform_logout">LOGOUT</a>
				</c:if>
			</div>
		</ul>
	</div>
	</nav>
	
</body>
</html>