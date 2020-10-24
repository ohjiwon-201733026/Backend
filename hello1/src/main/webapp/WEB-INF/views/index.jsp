<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html> 
<html> 
<head>   
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<link rel="stylesheet" href="common.css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="common.js"></script>  
</head> 
<body>
<h1>안녕하세요</h1>
<h3>${message }</h3>
<h3><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${date }"/></h3>
</body> 
</html>