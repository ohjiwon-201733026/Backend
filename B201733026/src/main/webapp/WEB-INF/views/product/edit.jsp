<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:url var="R" value="/"/>
<!DOCTYPE html> 
<html> 
<head>   
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">   
<link rel="stylesheet" type="text/css" href="${R}common.css"/>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="${R}common.js"></script>
<style>
form { width: 600px; margin: auto;
      box-shadow: 0 0 4px lightgray, 2px 2px 4px gray; overflow: auto; }
    div.title { font-size: 20pt; padding: 10px; background-color: #eee; }
    table { margin: 20px; }
    td { min-width: 100; padding: 5px; }
    td:nth-child(1) { text-align: right; }
    button { margin: 5px 0 20px 20px;padding: 0.4em 1em; border: 1px solid gray;           
       border-radius: 0.5em; background: linear-gradient(#fff, #ddd); 
       text-decoration: none; color: black;
       display: inline-block;  }
</style>
</head> 
<body> 
<div class="container">

   <form:form modelAttribute="product">
   <div class="title">제품 수정</div>
      <table>
         <tr>
            <td>이름:</td>
            <td>
               <form:input path="name"/>
            </td>
         </tr>
         <tr>
            <td>카테고리:</td>
            <td>
               <form:select path="categoryId" itemValue="id" items="${categorys }" itemLabel="title" />
            </td>
         </tr>
        <tr>
            <td>가격:</td>
            <td>
               <form:input path="price" />
            </td>
         </tr>
         <tr>
            <td>수량:</td>
            <td>
               <form:input path="quantity" />
            </td>
         </tr>
      </table>
      <hr/>
      <button type="submit">저장</button>

         <a href="list" class="btn">목록으로</a>
   </form:form>
</div>

</body> 
</html>