<%@include file="navbar.jsp"%>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->


<body background="resources/images/cart.jpg">

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container">
<body background="resources/images/shoppingcarts.jpg">

	<table align="center" class="table">
		<tr bgcolor='chartreuse'>
			<td colspan='6'>
				<center>Your Cart</center>
			</td>
		</tr>
		<tr bgcolor='orange'>
			<td>Product Name</td>
			<td>Price</td>
			<td>Quantity</td>
			<td>SubTotal</td>
			<td></td>
			<td>Operation</td>
		</tr>

		<c:if test="${not empty listCartItems}">
			<c:forEach items="${listCartItems}" var="cartItem">
				<form
					action="<c:url value="/updateCartItem/${cartItem.cartItemId}"/>"
					method="get">
					<tr>
						<td>${cartItem.productName}</td>
						<td>${cartItem.price}</td>
						<td><input type="text" name="qty"
							value="${cartItem.quantity}" /></td>
						<td>${cartItem.price * cartItem.quantity}</td>
						<td><img
							src="<c:url value="/resources/images/${cartItem.productId}.jpg"/>"
							width="50" height="50" /></td>
						<td><a
							href="<c:url value="/deleteCartItem/${cartItem.cartItemId}"/>">Delete</a>
							<input type="submit" value="Update" /></td>
							
					</tr>
				</form>
			</c:forEach>
		</c:if>
		<c:if test="${empty listCartItems}">
			<tr>
				<td colspan="6"><center>You Have No Items in Cart</center></td>
			</tr>
		</c:if>
		<tr>
			<td colspan="3">Total Cost</td>
			<td>${totalCost}</td>
			<td colspan="2"></td>
		</tr>
		<tr>
			<td colspan="3"><a href="<c:url value="/productPage"/>"><b>Continue
						Shopping</b></a></td>
			<td colspan="3"><a href="<c:url value="/orderConfirm"/>"><b>Checkout</b></a></td>
		</tr>


	</table>

</div>

