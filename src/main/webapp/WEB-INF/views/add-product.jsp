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
	background-color: MistyRose
}

table, th, td {
	border: 1px solid black;
}

table {
	border-collapse: collapse;
	margin-left: auto;
	margin-right: auto;
	text-align: center;
	vertical-align: center
}

h2 {
	text-align: center;
}

th {
	background-color: cornsilk;
}
</style>
<body>
	<h2>Add new Product</h2>
	<form:form method="post" modelAttribute="product"
		action="addnewproduct">
		<table>

			<tr>
				<td><form:hidden path="productId" /></td>
			</tr>
			<tr>
				<td>Product Name</td>
				<td><form:input path="productName" id="productName"
						name="productName" />
			</tr>
			<tr>
				<td>Product Quantity</td>
				<td><form:input path="quantity" id="quantity" name="quantity" /></td>
			</tr>
			<tr>
				<td>Cost</td>
				<td><form:input path="price" id="price" name="price" /></td>
			</tr>
			<tr>
				<td>Discount</td>
				<td><form:input path="discount" name="discount" id="discount" /></td>
			</tr>
			<tr>
				<td><input type="submit" name="submit" /></td>
				<td><input type="reset" name="reset" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>