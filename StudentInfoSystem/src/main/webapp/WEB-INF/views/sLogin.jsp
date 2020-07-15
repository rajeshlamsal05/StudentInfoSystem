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
		<div class="col-md-6 col-sm-12">
			<div class="login-form">
				<form class="form-signin" action="student_login" method="post">
					<div class="form-group">
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
					<span style="color: white">${loginfailed}</span> <br>
					<br> <a href="#" class="forgot-password">Forgot the
						password?</a>
				</form>
			</div>
		</div>
	</div>
</body>
<style>
body {
	font-family: "Lato", sans-serif;
}

.main-head {
	height: 150px;
	background: #FFF;
}

.sidenav {
	height: 100%;
	background-color: #000;
	overflow-x: hidden;
	padding-top: 20px;
}

.main {
	padding: 0px 10px;
}

@media screen and (max-height: 450px) {
	.sidenav {
		padding-top: 15px;
	}
}

@media screen and (max-width: 450px) {
	.login-form {
		margin-top: 10%;
	}
	.register-form {
		margin-top: 10%;
	}
}

@media screen and (min-width: 768px) {
	.main {
		margin-left: 40%;
	}
	.sidenav {
		width: 40%;
		position: fixed;
		z-index: 1;
		top: 0;
		left: 0;
	}
	.login-form {
		margin-top: 80%;
	}
	.register-form {
		margin-top: 20%;
	}
}

.login-main-text {
	margin-top: 20%;
	padding: 60px;
	color: #fff;
}

.login-main-text h2 {
	font-weight: 300;
}

.btn-black {
	background-color: #000 !important;
	color: #fff;
}
</style>
</html>