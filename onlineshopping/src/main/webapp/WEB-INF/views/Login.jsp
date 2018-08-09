<%@include file="navbar.jsp"%>
<!-- <style type="text/css">
@import url(http://fonts.googleapis.com/css?family=Roboto:400);

body {
	background-color: #fff;
	-webkit-font-smoothing: antialiased;
	font: normal 14px Roboto, arial, sans-serif;
}

.container {
	padding: 25px;
	position: fixed;
}

.form-login {
	background-color: #EDEDED;
	padding-top: 10px;
	padding-bottom: 20px;
	padding-left: 20px;
	padding-right: 20px;
	border-radius: 15px;
	border-color: #d2d2d2;
	border-width: 5px;
	box-shadow: 0 1px 0 #cfcfcf;
}

h4 {
	border: 0 solid #fff;
	border-bottom-width: 1px;
	padding-bottom: 10px;
	text-align: center;
}

.form-control {
	border-radius: 10px;
}

.wrapper {
	text-align: center;
}
</style> -->
<html>
<head>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
</head>
<body background="resources/images/screen.png">
	<form action="perform_login" method="post">
	
		<div class="container">
			<div class="row">
				<form>
					<div class="col-md-offset-5 col-md-3">

						<div class="form-login">
							<h4><font colour="white">Welcome</font></h4>
							<input type="text" name="username"
								class="form-control input-sm chat-input" placeholder="username">
							</br> <input type="password" name="password"
								class="form-control input-sm chat-input" placeholder="password">
							</br>
							<div class="wrapper">

								<input type="submit" class="btn btn-lg btn-info" value="Submit" />

							</div>
						</div>

					</div>
				</form>
			</div>
		</div>
	</form>
	
</body>
</html>