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
	<h1>직원 목록</h1>
	<a href="create" class="btn">직원 등록</a>
	<table class="list">
		<thead>
			<tr>
				<th>id</th>
				<th>직원 번호</th>
				<th>이름</th>
				<th>부서</th>
				<th>월급</th>
				<th>성별</th>
		</thead>
		<tbody>
			<c:forEach var="c" items="${employees}">
				<tr data-url="edit?id=${c.id}">
					<td>${c.id }</td>
					<td>${c.employeeNo }</td>
					<td>${c.name }</td>
					<td>${c.departmentName }</td>
					<td>${c.salary }</td>
					<td>${c.sex }</td>
				</tr>
				</c:forEach>
			
		</tbody>
	</table>
</div> 

</body> 
</html>