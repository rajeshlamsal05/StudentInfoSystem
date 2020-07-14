<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="resources/resetPassword.css" />
<script type="text/javascript" src="resources/jquery.js"></script>
<script type="text/javascript"
	src="resources/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/resetPassword.js"></script>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="resources/css/resetPassword.css">
<title>Change Password</title>
</head>
<body>

	<div class="wrapper fadeInDown">
		<div id="formContent">

			<div class="fadeIn first">
				<img src="resources/images/resetPassword/wrench.png" id="icon"
					alt="User Icon" />
			</div>
			<h2 class="text-center text-blue pt-5">Change Password</h2>
			<br> <br>
			<!-- Login Form -->
			<form class="form-signin" action="update_password" method="post">
				<span style="color: red">${passwordNotMatched}</span> <input
					type="password" id="inputPassword" class="form-control"
					placeholder="Current Password" name="password" required autofocus>
				<br> <input type="password" id="inputPassword"
					class="form-control" name="password" placeholder="New Password"
					required autofocus>

				<div id="formFooter">
					<button class="btn btn-primary " type="submit">GO !!</button>
				</div>
			</form>




		</div>
	</div>
</body>
</html>