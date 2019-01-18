<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div>
	
	<span>${client_dto.member_name }님 환영합니다.</span>
	<br>
	<a href="info?member_no=${client_dto.member_no }">내정보보기</a>
	<br>
	<a href="insertform">제휴업체 신청</a>
	
	</div>	

</body>
</html>