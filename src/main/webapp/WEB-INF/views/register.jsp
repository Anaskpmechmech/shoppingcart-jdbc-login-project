<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body {
	background-color: skyblue;
}

table, th, td {
	border: 1px solid black;
}

th {
	background-color: cornsilk;
}

h2 {
	text-align: center;
	color: blue
}

h3 {
	text-align: center;
	color: blue;
}

h4 {
	text-align: center;
}

table {
	margin-left: auto;
	margin-right: auto;
	text-align: center;
	vertical-align: center;
	border-collaps: collaps;
}
</style>
<body>
	<h2>Register Page</h2>
	<h4>Enter your personal details</h4>
	<form:form action="registeruser" method="post" modelAttribute="user">
		<table>
			<tr>
				<td>FIRST NAME</td>
				<td><form:input path="firstName" name="firstName"
						id="firstName" /></td>
			</tr>
			<tr>
				<td>LAST NAME</td>
				<td><form:input path="lastName" name="lastName" id="lastName" /></td>
			</tr>
			<tr>
				<td>USERNAME</td>
				<td><form:input path="userName" name="userName" id="userName" /></td>
			</tr>
			<tr>
				<td>PASSWORD</td>
				<td><form:input type="password" path="password" name="password"
						id="password" /></td>
			</tr>
			<tr>
				<td>EMAIL ID</td>
				<td><form:input type="email" path="email" name="email"
						id="email" /></td>
			</tr>
			<tr>
				<td>PHONE NO</td>
				<td><form:input path="mobileNo" name="mobileNo" id="mobileNo" /></td>
			</tr>
			<tr>
				<td>ROLE</td>
				<td><form:input path="role" name="role" id="role" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="submit" /></td>
				<td><input type="reset" value="reset" /></td>
			</tr>

		</table>
	</form:form>
</body>
</html>