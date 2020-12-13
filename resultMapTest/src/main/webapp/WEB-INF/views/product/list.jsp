<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/common.css" />
<style>
td:nth-child(1), td:nth-child(5), td:nth-child(7), td:nth-child(8) {
	text-align: center;
}
</style>
</head>
<body>
	<div class="container">
		<h1>제품 목록</h1>
		<table class="list">
			<thead>
				<tr>
					<th>id</th>
					<th>name</th>
					<th>categoryId</th>
					<th>categoryTitle</th>
					<th>categoryTitleEng</th>
					<th>price</th>
					<th>quantity</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="product" items="${ products }">
					<tr>
						<td>${ product.id }</td>
						<td>${ product.name }</td>
						<td>${ product.categoryId }</td>
						<td>${ product.category.title }</td>
						<td>${ product.category.titleEng }</td>
						<td>${ product.price }</td>
						<td>${ product.quantity }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>