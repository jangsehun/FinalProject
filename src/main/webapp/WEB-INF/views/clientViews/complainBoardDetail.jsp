<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>건의사항 글 보기</title>

<link href="css/ReviewView.css" rel="stylesheet">
<link href="vendor/bootstrap/css/bootstrap.min2.css" rel="stylesheet">
</head>
<body>

	<h1>건의사항 글 보기</h1>
	
	
		<div class="subject_form">
			<div class="subject">제목</div>
			<div class="form-group">
				${dto.complain_title }
			</div>
		</div>
		
		<div class="writer_form">
			<div class="write">글쓴이</div>
			<div class="writer">
				${dto.complain_writer }
			</div>
			<div class="hit">
				조회수 : &nbsp;&nbsp;${dto.complain_count } />
			</div>
			<div class="date_form">
				작성일 :&nbsp;&nbsp;
			<fmt:formatDate value="${dto.complain_date_create }" pattern="yyyy.MM.dd" />
			</div>
		</div>
		
		<br>
		<br>
		<!-- 글 내용이 들어가는 부분 -->
		<div class="content_form">
			<div class="content">
				<!-- 게시글 내용 -->
				${dto.complain_content }
			</div>

		</div>

	<hr>
	<input type="button" value="목록" onclick="location.href='complain_board_list'"/>
	<input type="button" value="수정" onclick="location.href='complain_updateform?complain_no=${dto.complain_no}'"/>
	<input type="button" value="삭제" onclick="location.href='complain_delete?complain_no=${dto.complain_no}'"/>
</body>
</html>