<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />
<%@page isELIgnored="false" language="java"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Category Admin</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="main.js"></script>
</head>
<body bgcolor="lightblue">
	<%@include file="navbar.jsp"%>
	<div class="container">
		<h2 align="center">Admin</h2>
		
		<div class="tab-content">
			<!-- Category Tab -->
			<div id="category" class="tab-pane fade in active">
				<form:form action="saveCate"
					modelAttribute="category" method="post">
					<h3>Add new Category</h3>
					<div class="form-group">
						<table class="table table-hover ">
							<tbody>
								<tr>
									<td><form:label path="categoryId">Category ID</form:label></td>
									<td><form:input type="number" path="categoryId"
											class="form-control" id="categoryId" placeholder="Enter category id"
											name="categoryId" />
								</tr>
								<tr>
									<td><form:label path="categoryName">Category Name</form:label></td>
									<td><form:input path="categoryName" type="text"
											class="form-control" id="categoryName"
											placeholder="Enter category name " name="categoryName" />
								</tr>
								<tr>
									<td><form:label path="categoryDesc">Category Description</form:label></td>
									<td><form:input path="categoryDesc" type="text"
											class="form-control" id="categoryDesc"
											placeholder="Enter Category Description " name="categoryDesc" />
								</tr>
								<tr>
									<td>
										<button type="submit" class="btn btn-lg btn-primary ">Submit
										</button>
									
								</tr>
							</tbody>
						</table>
					</div>
				</form:form>
			</div>
			</div>
			</div>
			
			</body>
			</html>