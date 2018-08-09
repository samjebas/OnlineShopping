<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="container">
	<div class="row">
		<c:forEach items="${listProducts}" var="product">
			<form
				action="<c:url value="/updateProduct/${product.productId}"/>"
				method="get">
				<div class="col-sm-6-col-md-6">
					<img
						src="<c:url value="/resources/images/${product.productId}.jpg"/>"
						width="550" height="220" alt="Generic thumbnail">
					<h3>${product.productName}</h3>
					<input type="text" name="price" value="${product.price}" /> <a
						href="<c:url value="/deleteProduct/${product.productId}"/>">Delete</a>
					<div>
						<input type="submit" value="Update" />
			</form>
		</c:forEach>
	</div>
</div>










