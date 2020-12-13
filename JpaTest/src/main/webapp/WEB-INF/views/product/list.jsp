<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="${R}common.js"></script>
<link rel="stylesheet" type="text/css" href="${R}common.css" />
<style>
a.btn {
	float: right;
	margin: -20px 0 5px 0;
}

td:nth-child(1), td:nth-child(5) {
	text-align: center;
}
</style>
</head>
<body>
	<div class="container">
		<h1>제품 목록</h1>
		<a href="create" class="btn">제품 등록</a>
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
					<tr data-url="edit?id=${ product.id }">
						<td>${ product.id }</td>
						<td>${ product.name }</td>
						<td>${ product.category.id }</td>
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