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
		<c:forEach var="district" items="${ districts }">
			<h3>${ district.id }- ${ district.districtName }</h3>
			<table class="list">
				<thead>
					<tr>
						<th>id</th>
						<th>도시</th>
						<th>인구</th>
						<th>면적</th>
					</tr>
				</thead>
				<tbody>
				 <c:forEach var="city" items="${ district.cities }" > 
				
						<tr>
							<td>${ city.id }</td>
							<td>${ city.name }</td>
							<td>${ city.population }</td>
							<td>${ city.area }</td>
						</tr>
				</c:forEach>
				</tbody>
			</table>
		</c:forEach>
	</div>
</body>
</html>
