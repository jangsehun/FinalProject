<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>건의사항 수정 페이지</title>
</head>
<body>

	<h1>건희사항 수정하기</h1>
	<form action="../client/complain_update?complain_no=${dto.complain_no }" method="post">
	<table border="1">
	<tr>
		<th>작성자</th>
		<td>${dto.complain_writer }</td>
	</tr>
	<tr>
		<th>구분</th>
		<td><input type="text" value="${dto.complain_category }" name="complain_category"/></td>
	</tr>
	<tr>
		<th>제목</th>
		<td><input type="text" value="${dto.complain_title }" name="complain_title"/></td>
	</tr>
	<tr>
		<th>내용</th>
		<td><input type="text" value="${dto.complain_content }" name="complain_content"/></td>
	</tr>
	</table>
	<hr>
	<input type="button" value="취소" onclick="location.href='complain_board_list'"/>
	<input type="submit" value="수정완료"/>
	</form>
</body>
</html>