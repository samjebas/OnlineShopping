<%@include file="navbar.jsp" %>

<div class="container">
<div class = "row">

<c:forEach items="${listProducts}" var="product">
		<div class = "col-sm-4 col-md-4">
			<a href="<c:url value="productDesc/${product.productId}"/>">
			<img src = "<c:url value="/resources/images/${product.productId}.jpg"/>" width="100" height="150" alt = "Generic thumbnail">
			</a>
 			<p>
      	 		<h3>${product.productName}</h3>
      	 		<h3>Rs ${product.price}</h3>
      		</p>
		</div>
</c:forEach>

</div>
</div>

