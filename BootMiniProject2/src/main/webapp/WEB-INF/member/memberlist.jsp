<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.3.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<h2 class="alert alert-info">총 ${count }명의 회원이 있습니다</h2>
<br>
<table class="table table-bordered" style="width: 800px;">
<caption><b>전체회원명단</b></caption>
<tr style="background-color: #ddd">

<th style="width: 50px;">번호</th>
<th style="width: 50px;">이름</th>
<th style="width: 50px;">아이디</th>
<th style="width: 50px;">핸드폰</th>
<th style="width: 50px;">주소</th>
<th style="width: 50px;">이메일</th>
<th style="width: 50px;">
<input type="checkbox"  id="allcheck">
삭제</th>
</tr>

<c:forEach var="dto" items="${list }" varStatus="i">
<tr>
				<td>${i.count }</td>
				
				<td>
				<img alt="" src="../photo/${dto.photo } " style="width: 30px; height: 30px;"> &nbsp;&nbsp;&nbsp;
				</td>
				<td>${dto.name }</td>
				<td>${dto.id }</td>
				<td>${dto.hp }</td>
				<td>${dto.addr }</td>
				<td>${dto.email }</td>
				<td><input type="checkbox" class="del" num=${dto.num }> </td>
	


</tr>
</c:forEach>

<tr>
<td colspan="7">
<button class="btn btn-danger"	type="button" style="margin-left: 650px;" id="btnmemberdel">delete</button>
</td>

</tr>







</table>	
</body>
</html>