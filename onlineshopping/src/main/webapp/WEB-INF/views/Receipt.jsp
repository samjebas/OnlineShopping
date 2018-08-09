<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<body background="resources/images/receipt.jpg">
<div class="container">
	<div class="row">
		<div
			class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
			<div class="row">
				<div class="col-xs-6 col-sm-6 col-md-6">
					<address>
						<strong>${username}</strong> 
				</div>
				<div class="col-xs-6 col-sm-6 col-md-6 text-right">
					<p>
						<em>Date: ${sessionScope.orderdate}</em>
					</p>
					<p>
						<em>Order ID:${sessionScope.orderId} </em>
					</p>
				</div>
			</div>
			<div class="row">
				<div class="text-center">
					<h1>Receipt</h1>
				</div>
				</span>
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Product</th>
							<th>Quantity</th>

							<th class="text-center">Total</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${listCartItems}" var="cartItem">
							<tr bgcolor='cyan'>
								<td class="col-md-9"><em>${cartItem.productName}</em>
								</h4></td>
								<td class="col-md-1" style="text-align: center">
									${cartItem.quantity}</td>

								<td class="col-md-1 text-center">${cartItem.quantity * cartItem.price}</td>
							</tr>
						</c:forEach>




						<tr>
							<td> </td>
							<td> </td>
							<td class="text-right"><h4>
									<strong>Total: </strong>
								</h4></td>
							<td class="text-center text-danger"><h4>
									<strong>${totalCost}</strong>
								</h4></td>
						</tr>
					</tbody>
				</table>
				<button type="button" class="btn btn-success btn-lg btn-block">
					Thank You For Shopping With Us
				</button>
				</td>