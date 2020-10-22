<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<style>
table {
	border-collapse: collapse;
}

td {
	width: 100;
	padding: 5px;
	border: 1px solid gray;
}
</style>
</head>
<body>
	<table>
		<tr>
			<td>id</td>
			<td>${student.id}</td>
		</tr>
		<tr>
			<td>studentNumber</td>
			<td>${student.studentNumber}</td>
		</tr>
		<tr>
			<td>studentName</td>
			<td>${student.studentName}</td>
		</tr>
		<tr>
			<td>email</td>
			<td>${student.email}</td>
		</tr>
	</table>


</body>
</html>
