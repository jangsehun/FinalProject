<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ı� ���� ������</title>
</head>
<body>

	<h1>�ı� �����ϱ�</h1>
	<form action="../user/review_update?review_no=${dto.review_no }" method="post">
	<table border="1">
	<tr>
		<th>�ۼ���</th>
		<td>${dto.review_writer }</td>
	</tr>
	<tr>
		<th>����</th>
		<td><input type="text" value="${dto.review_category }" name="review_category"/></td>
	</tr>
	<tr>
		<th>����</th>
		<td><input type="text" value="${dto.review_title }" name="review_title"/></td>
	</tr>
	<tr>
		<th>����</th>
		<td><input type="text" value="${dto.review_content }" name="review_content"/></td>
	</tr>
	</table>
	<hr>
	<input type="button" value="���" onclick="location.href='review_board_list'"/>
	<input type="submit" value="�����Ϸ�"/>
	</form>
</body>
</html>