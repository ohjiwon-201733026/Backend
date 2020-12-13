<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${R}common.css" />
</head>
<body>
	<div class="container">
		<c:forEach var="category" items="${ categories }">
			<h3>${ category.id }- ${ category.title }</h3>

			<table class="list">
				<thead>
					<tr>
						<th>id</th>
						<th>제품명</th>
						<th>categoryId</th>
						<th>price</th>
						<th>quantity</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="product" items="${ category.products }">
						<tr>
							<td>${ product.id }</td>
							<td>${ product.name }</td>
							<td>${ category.id }</td>
							<td>${ product.price}</td>
							<td>${ product.quantity }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:forEach>
	</div>
</body>
</html>
