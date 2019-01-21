<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>건의사항 글 보기</title>
</head>
<body>

	<h1>건의사항 글 보기</h1>
	
	<table border="1">
	<tr>
		<th>작성자</th>
		<td>${dto.complain_writer }</td>
	</tr>
	<tr>
		<th>구분</th>
		<td>${dto.complain_category }</td>
	</tr>
	<tr>
		<th>제목</th>
		<td>${dto.complain_title }</td>
	</tr>
	<tr>
		<th>내용</th>
		<td>${dto.complain_content }</td>
	</tr>
	</table>
	<hr>
	<input type="button" value="목록" onclick="location.href='complain_board_list'"/>
	<input type="button" value="수정" onclick="location.href='complain_updateform?complain_no=${dto.complain_no}'"/>
	<input type="button" value="삭제" onclick="location.href='complain_delete?complain_no=${dto.complain_no}'"/>
</body>
</html>