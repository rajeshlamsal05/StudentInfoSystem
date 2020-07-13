<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student List</title>
<%@ include file="headeradmin.jsp" %>
</head>
<body>

		<h1><font color=black><marquee bgcolor="yellow">List of Students</marquee></font></h1>
	</div>
	
	<c:if test="${!empty students}">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>SN</th>
					<th>Id</th>
					<th>User Name</th>
					<th>Password</th>
					<th>Gender</th>
					<th>Languages</th>
					<th>Identity Document</th>
					<th>DOB</th>
					<th>Student Address</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${students}" var="student" varStatus="i">
					<tr>
						<td>${i.count}</td>
						<td>${student.id}</td>
						<td>${student.username}</td>
						<td>${student.password}</td>
						<td>${student.gender}</td>
						<td>${student.languages}</td>
						<td>${student.identityDocument}</td>
						<td>${student.dob}</td>
						<td>${student.studentAddress.streetNumber} ${student.studentAddress.streetName} ${student.studentAddress.cityName} ${student.studentAddress.stateName} ${student.studentAddress.zipCode} ${student.studentAddress.countryName}</td>
						<td><a href="edit_student?id=${student.id}"><font color=blue>Edit</font></a> 
							<a href="delete_student?id=${student.id}"><font color=red>Delete</font></a></td>
					</tr>
				
				</c:forEach>
			</tbody>
		</table>
	</c:if>
	
	</div>
</body>
</html>