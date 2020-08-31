<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
h4 {
	text-align: center;
}

th {
	background-color: cornsilk;
}

h1 {
	text-align: center;
}

h2 {
	text-align: center;
}

body {
	background-color: darkgrey;
}

table {
	margin-left: auto;
	margin-right: auto;
	text-align: center;
	vertical-align: center;
	border-collaps: collaps;
}

table, th, td {
	border: 1px solid black;
}
</style>
<body>
	<h1>Admin view</h1>
	<table>
		<thead>
			<tr>
				<th>Product id</th>
				<th>Product name</th>
				<th>Product quantity</th>
				<th>Product Price</th>
				<th>Discount %</th>
				<th>Delete product</th>
				<th>Update Product</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${not empty product}">
				<c:forEach var="p" items="${product}">
					<tr>
						<td>${p.productId}</td>
						<td>${p.productName}</td>
						<td>${p.quantity}</td>
						<td>${p.price}</td>
						<td>${p.discount}</td>
						<td><a href="delete?id=${p.productId}">Delete</a></td>
						<td><a href="update?id=${p.productId}">Update</a></td>
					</tr>
				</c:forEach>
			</c:if>
		</tbody>
	</table>
	<h2>
		<a href="addproduct">Add New Product</a>
	</h2>
	<h4>
		<a href="logout">Logout</a>
	</h4>
</body>
</html>