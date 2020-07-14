<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="resources/resetPassword.css" />
<script type="text/javascript" src="resources/jquery.js"></script>
<script type="text/javascript"
	src="resources/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/resetPassword.js"></script>

<%-- <%@ include file="header.jsp" %>
 --%>

<div class="container">
	<div class="card card-container">
		<h3 class="text-center text-blue pt-5">Change Password</h3>
		<form class="form-signin" action="update_password" method="post">
			<span style="color: red">${passwordNotMatched}</span> <input
				type="password" id="inputPassword" class="form-control"
				placeholder="Current password" name="password" required autofocus>
			<input type="password" id="inputPassword" class="form-control"
				placeholder="New Password" name="newPassword" required>
			<button class="btn btn-lg btn-primary btn-block btn-signin"
				type="submit">Change password</button>

		</form>
	</div>
</div>