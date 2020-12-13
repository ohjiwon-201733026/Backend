<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="/common.js"></script>
<link rel="stylesheet" type="text/css" href="/common.css" />
<style>
h3 {
	margin-bottom: 2px;
}

td:nth-child(1), td:nth-child(5) {
	text-align: center;
}
</style>
</head>
<body>
	<div class="container">
		<h1>카테고리 별 제품 정보</h1>
		<c:forEach var="category" items="${ categories }">
			<h3>${ category.id }- ${ category.title }</h3>
			<table class="list">
				<thead>
					<tr>
						<th>id</th>
						<th>제품명</th>
						<th>카테고리명</th>
						<th>카테고리 영어명</th>
						<th>가격</th>
						<th>수량</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="product" items="${ category.products }">
						<tr>
							<td>${ product.id }</td>
							<td>${ product.name }</td>
							<td>${ category.title }</td>
							<td>${ category.titleEng }</td>
							<td>${ product.price }</td>
							<td>${ product.quantity }</td>
<%-- 							<td><fmt:formatDate pattern="yyyy-MM-dd" --%>
<%-- 									value="${ course.startDate }" /></td> --%>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:forEach>
	</div>
</body>
</html>