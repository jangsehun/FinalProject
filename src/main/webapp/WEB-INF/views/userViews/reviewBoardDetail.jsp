<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ı� �� ������</title>
</head>
<body>

	<h1>�ı� �󼼺���</h1>
	
	<table border="1">
	<tr>
		<th>�ۼ���</th>
		<td>${dto.review_writer }</td>
	</tr>
	<tr>
		<th>����</th>
		<td>${dto.review_category }</td>
	</tr>
	<tr>
		<th>����</th>
		<td>${dto.review_title }</td>
	</tr>
	<tr>
		<th>����</th>
		<td>${dto.review_content }</td>
	</tr>
	</table>
	<hr>
	<input type="button" value="���" onclick="location.href='review_board_list'"/>
	<input type="button" value="����" onclick="location.href='review_updateform?review_no=${dto.review_no}'"/>
	<input type="button" value="����" onclick="location.href='review_delete?review_no=${dto.review_no}'"/>
</body>
</html>