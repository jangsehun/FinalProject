<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��ϵ� ȸ������ ������</title>
</head>
<body>

	<h1>ȸ�� ����Ʈ</h1>
	
	<form action="registform">
	<table border="1">
		<tr>
			<th>�̸�</th>
			<th>ID</th>
			<th>PASSWORD</th>
		</tr>
		<c:choose>
			<c:when test="${empty list }">
				<tr>
					<td>-------�� ������ �����ϴ�-------</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach items="${list }" var="dto">
					<tr>
						<td>${dto.member_name }</td>
						<td>${dto.member_id }</td>
						<td>${dto.member_password }</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</table>
	<hr>
	<input type="button" value="ó������" onclick="location.href='#'"/>
	<input type="submit" value="ȸ������"/>
	</form>
</body>
</html>