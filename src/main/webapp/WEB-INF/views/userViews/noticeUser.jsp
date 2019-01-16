<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>커뮤티니 안에 있는 학생들이 보는 공지사항</title>
</head>
<body>

	<h1>공지사항</h1>
	
	<jsp:useBean id="dto" class="kh.coupon.mvc.dto.BoardDto" scope="request"></jsp:useBean>
	<select name="category">
		<option value="" selected="selected">--제휴업체--</option>
		<option value="<jsp:getProperty property="user_no" name="dto"/>"> 7Gram </option>
		<option value="<jsp:getProperty property="user_no" name="dto"/>"> 맥주창고 </option>
		<option value="<jsp:getProperty property="user_no" name="dto"/>"> 요술포차 </option>
	</select>
	
	<table>
		<col width="50"> <!-- board_no -->
		<col width="100"> <!-- user_name -->
		<col width="200"> <!-- boardt_title -->
		<col width="100"> <!-- board_date_create -->
		<col width="100"> <!-- board_category-->
		<col width="50"> <!-- board_count -->
		
		<tr>
			<th>게시글 번호</th>
			<th>작성자</th>
			<th>제목</th>
			<th>작성일</th>
			<th>제휴업체</th>
			<th>조회수</th>
		</tr>
		
		<c:choose>
			<c:when test="${empty list }">
				<tr>
					<td colspan="6"> --- 작성된 공지사항이 없습니다. --- </td>				
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach var="dto" items="${list }">
					<tr align="center">
						<td>{dto.board_no}</td>
						<td>{dto.user_name}</td>
						<td>{dto.board_title}</td>
						<td>{dto.board_date_create}</td>
						<td>{dto.board_category}</td>
						<td>{dto.board_count}</td>
					</tr>								
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</table>
	
	
	
</body>
</html>