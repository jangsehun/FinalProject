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


<h1>제휴업체 상세정보</h1>

	<table border="1">
		<tr>
			<th>번호</th>
			<td>${client_dto.member_no }</td>
		</tr>
		<tr>
			<th>이름</th>
			<td>${client_dto.member_name }</td>
		</tr>
		<tr>
			<th>아이디</th>
			<td>${client_dto.member_id }</td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td>${client_dto.member_password }</td>
		</tr>
	
	</table>

</body>
</html>