<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Registration Form</title>
<%@ include file="headerstudent.jsp" %>

<style type="text/css">
label{
	font-weight: bold;
}

</style>
</head>
<body>

<div id="f" class="container">
	<div class="panel">
	<div class="panel-default">
	<div class="row">
	<div class="col-md-2"></div>
	<div class="col-md-8 jumbotron">
		<form action="save_student" method="post" class="form-horizontal">
		<fieldset>
		<legend><font color=red><b>New Student Registration</b></font></legend>
			<div class="form-group">
				<label>User Name</label>
				<input type="text" name="username" class="form-control">
			</div>
			
			<div class="form-group">
				<label>Password</label>
				<input type="password" name="password" class="form-control">
			</div>
			
			<div class="form-group">
				<label>Gender</label>
				<input type="radio" name="gender" value="Male"	>Male
				<input type="radio" name="gender" value="Female">Female
			</div>
			
			<div class="form-group">
				<label>Languages</label>
				<input type="checkbox" name="languages" value="English" class="form-check">English
				<input type="checkbox" name="languages" value="Spanish" class="form-check">Spanish
				<input type="checkbox" name="languages" value="Other" class="form-check">Other
			</div>
			
			<div class="form-group">
				<label>Identity Document</label>
				<select name="identityDocument">
					<option value="select">Select One
					<option value="citizenship">Citizenship
					<option value="SSN">SSN
					<option value="DL">DL
				</select>
			</div>
			
			<div class="form-group">
				<label>DOB</label>
				<input type="date" name="dob" class="form-control">
			</div>
		
			
			<label style="font-weight: bold;font-style: italic;">Student Address</label><br>
			
			<div class="form-group">
				<label>Street Number</label>
				<input type="number" name="studentAddress.streetNumber" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label>Street Name</label>
				<input type="text" name="studentAddress.streetName" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label>City Name</label>
				<input type="text" name="studentAddress.cityName" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label>State Name</label>
				<input type="text" name="studentAddress.stateName" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label>Zip code</label>
				<input type="number" name="studentAddress.zipCode" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label>Country Name</label>
				<input type="text" name="studentAddress.countryName" class="form-control"/>
			</div>
			
			<div class="form-group">
				<input type="submit" name="submit" class="btn btn-primary">
			</div>
			
			<div class="form-group">
				<input type="reset" name="clear" class="btn btn-success">
			</div>
		
			
		</fieldset>
		</form>
		</div>
		<div class="col-md-2"></div>
		</div>
		</div>
		</div>
	</div>

</body>
</html>