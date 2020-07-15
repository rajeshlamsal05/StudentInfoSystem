<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Login</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">

<link rel="stylesheet" href="resources/css/login.css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>
	<div class="sidenav">
		<div class="login-main-text">
			<h2>
				<br> <br> Student<br> Login Page
			</h2>
			<br>
			<p>Welcome, all the students to this site. Moving further,</p>
			<p>Login or register from here to access.</p>
			<a href="choose" class="nav-link">Click here to change
				preferences</a> <span style="color: white;">${logoutmessage}</span> <span
				id="reauth-email" class="reauth-email"></span>
		</div>
	</div>
	<div class="main">
		<div class="col-md-4 col-sm-20">
			<div class="login-form">
				<form class="form-signin" action="student_login" method="post">
					<div class="form-group">
						<img id="profile-img" class="profile-img-card"
							src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
						<p id="profile-name" class="profile-name-card"></p>
						<label>User Name</label> <span id="reauth-email"
							class="reauth-email"></span><input type="text" id="inputEmail"
							class="form-control" placeholder="Username" name="username"
							required autofocus>
					</div>
					<div class="form-group">
						<label>Password</label> <input type="password" id="inputPassword"
							class="form-control" placeholder="Password" name="password"
							required>
					</div>
					<div id="remember" class="checkbox">
						<label> <input type="checkbox" value="remember-me">
							Remember me
						</label>
					</div>
					<button type="submit" class="btn btn-black">Login</button>
					<button type="submit" class="btn btn-secondary">Register</button>
					<span style="color: white">${loginfailed}</span> <br> <br>
					<a href="#" class="forgot-password">Forgot the password?</a>
				</form>
			</div>
		</div>
	</div>
</body>
<style>
</style>
</html>