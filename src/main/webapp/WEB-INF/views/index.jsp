<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body {
	background-color: Salmon;
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

table, th, td {
	border: 1px solidblack;
}

table {
	border-collaps: collaps;
	text-align: center;
	vertical-align: center;
	margin-left: auto;
	margin-right: auto;
}
</style>
<body>
	<form:form action="validate" method="post" modelAttribute="user">
		<h2>
			Welcome to DXC shopping Mart <br>LOGIN PAGE
		</h2>
		<br>
		<br>
		<table>
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
				<td><input type="submit" value="submit" /></td>
				<td><input type="reset" value="reset" /></td>
			</tr>

		</table>
		<h3>
			<a href="register">REGISTER</a><br>
		</h3>
	</form:form>
</body>
</html>