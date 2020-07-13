<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>College Info</title>
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
		<legend><font color=red><b>College Info</b></font></legend>
			<div class="form-group">
				<label>User Name</label>
				<input type="text" name="userName" class="form-control">
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
				<input type="number" name="address.streetNumber" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label>Street Name</label>
				<input type="text" name="address.streetName" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label>City Name</label>
				<input type="text" name="address.cityName" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label>State Name</label>
				<input type="text" name="address.stateName" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label>Zip code</label>
				<input type="number" name="address.zipCode" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label>Country Name</label>
				<input type="text" name="address.countryName" class="form-control"/>
			</div>
		
		
			<label style="font-weight: bold;font-style: italic;">College Address</label><br>
			
			<div class="form-group">
				<label>Street Number</label>
				<input type="number" name="collegeAddress.streetNumber" class="form-control">
			</div>
			
			<div class="form-group">
				<label>Street Name</label>
				<input type="text" name="collegeAddress.streetName" class="form-control">
			</div>
			<div class="form-group">
				<label>City Name</label>
				<input type="text" name="collegeAddress.cityName" class="form-control">
			</div>
			
			<div class="form-group">
				<label>State Name</label>
				<input type="text" name="collegeAddress.stateName" class="form-control">
			</div>
			
			<div class="form-group">
				<label>Zip code</label>
				<input type="number" name="collegeAddress.zipCode" class="form-control">
			</div>
			
			<div class="form-group">
				<label>Country Name</label>
				<input type="text" name="collegeAddress.countryName" class="form-control">
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