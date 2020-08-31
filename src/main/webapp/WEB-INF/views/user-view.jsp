<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body {
	background-color: lightpink;
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

th {
	background-color: cornsilk;
}

h1 {
	text-align: center
}

h2 {
	text-align: center;
}

h4 {
	text-align: center;
}
</style>
<body>


	<h1>User view</h1>
	<h2>Available Products</h2>
	<table>
		<thead>
			<tr>
				<th>Product Name</th>
				<th>Product Price</th>
				<th>Discount</th>
				<th>How Many</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${not empty availableproducts}">
				<c:forEach var="p" items="${availableproducts}">
					<form:form action="addtocart" method="post"
						modelAttribute="products">
						<td><form:hidden path="productId" value="${p.productId}" /></td>
						<td><form:hidden path="productName" value="${p.productName}" /></td>
						<td><form:hidden path="price" value="${p.price}" /></td>
						<td><form:hidden path="discount" value="${p.discount}" /></td>
						<tr>
							<td>${p.productName}</td>
							<td>${p.price}</td>
							<td>${p.discount}</td>
							<td><form:input path="quantity" /></td>
							<td><input type="submit" name="submit" value="add" /></td>
						</tr>
					</form:form>
				</c:forEach>
			</c:if>
		</tbody>
	</table>
	<c:if test="${not empty cart}">
		<h2>Cart</h2>
		<table>
			<thead>
				<tr>
					<th>ProductName</th>
					<th>Product quantity</th>
					<th>Action</th>
				</tr>
			</thead>
			<c:forEach var="ct" items="${cart}">
				<tr>
					<td>${ct.productName}</td>
					<td>${ct.quantity}</td>
					<td><a
						href="deletefromcart?id=${ct.productId}&quantity=${ct.quantity}">delete</a></td>
				</tr>
			</c:forEach>
		</table>
		<h2>Total cost= ${cost} /-</h2>
	</c:if>
	<h4><a href="logout">Logout</a></h4>
</body>
</html>