<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html> 
<html> 
<head>   
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/common.css"/>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="/common.js"></script>
<style>
    a.btn { float: right; margin: -20px 0 5px 0; }
    td:nth-child(1) { text-align: center; }
</style>   
</head> 
<body>
<div class="container">
	<h1>제품목록</h1>
	<table class="list">
		<thead>
			<tr>
				<th>id</th>
				<th>이름</th>
				<th>카테고리</th>
				<th>가격</th>
				<th>수량</th>
		</thead>
		<tbody>
			<c:forEach var="c" items="${products}">
				<tr data-url="edit?id=${c.id}">
					<td>${c.id }</td>
					<td>${c.name }</td>
					<td>${c.categoryName }</td>
					<td>${c.price }</td>
					<td>${c.quantity }</td>
				</tr>
				</c:forEach>
			
		</tbody>
	</table>
</div> 

</body> 
</html>