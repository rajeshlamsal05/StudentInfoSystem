<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Login</title>

<link rel="stylesheet" href="resources/login.css" />
<script type="text/javascript" src="resources/jquery.js"></script>
<script type="text/javascript"
	src="resources/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/login.js"></script>
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

<!--local style sheets  -->
<link rel="stylesheet" href="resources/css/resetPassword.css">
<link rel="stylesheet" href="resources/css/global.css">
<link rel="stylesheet" href="resources/css/animations/keyframes.css">
</head>
<body>
	<div class="container">
		<div class="card card-container">
			<!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->
			<img id="profile-img" class="profile-img-card"
				src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
			<p id="profile-name" class="profile-name-card"></p>
			<h2>
				<font color=red>Student login only</fon>
			</h2>
			<a href="choose" class="nav-link">Click here to change
				preferences</a>
			<form class="form-signin" action="student_login" method="post">
				<span style="color: red;">${loginfailed}</span> <span
					style="color: red;">${logoutmessage}</span> <span id="reauth-email"
					class="reauth-email"></span> <input type="text" id="inputEmail"
					class="form-control" placeholder="Username" name="username"
					required autofocus> <input type="password"
					id="inputPassword" class="form-control" placeholder="Password"
					name="password" required>
				<div id="remember" class="checkbox">
					<label> <input type="checkbox" value="remember-me">
						Remember me
					</label>
				</div>
				<button class="btn btn-lg btn-primary btn-block btn-signin"
					type="submit">Sign in</button>
			</form>
			<a href="#" class="forgot-password">Forgot the password?</a> <a
				href="add_student">Add Student</a>
		</div>
	</div>
</body>
</html>