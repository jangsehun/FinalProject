<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
  
    $("#condition").change(function(){      
       var condition = $("#condition option:selected").val();
       location.href="review_search?condition="+condition;   
    });
    
});
</script>
<meta charset="EUC-KR">
<title>�̿��ı� �Խ��� ������</title>
</head>
<body>

<!-- ���̰� �ۼ��� -->
${regist_dto.member_name }�� ȯ���մϴ�.<br>
	<h1>�̿��ı� �Խ���</h1>
	<form action="review_insertform">
	<select id="condition">
		<option value="��ü" <c:if test="${Name eq '��ü'}">selected</c:if>>��ü</option>
		<option value="7Gram" <c:if test="${param.condition=='7Gram'}">selected</c:if>>7Gram</option>
		<option value="����â��" <c:if test="${param.condition=='����â��'}">selected</c:if>>����â��</option>
		<option value="�������" <c:if test="${param.condition=='�������'}">selected</c:if>>�������</option>
	</select>
	<table border="1">
		<tr>
			<th>��ȣ</th>
			<th>�з�</th>
			<th>����</th>
			<th>�ۼ���</th>
			<th>��ȸ��</th>
			<th>���ƿ�</th>
		</tr>
			<c:choose>
				<c:when test="${empty list }">
					<tr>
						<td colspan="1">-------�ۼ��� ���� �����ϴ�-------</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach items="${list }" var="dto">
						<tr>
							<td>${dto.review_no }</td>
							<td>${dto.review_category }</td>
							<td><a href="review_detail?review_no=${dto.review_no }">${dto.review_title }</a></td>
							<td>${dto.review_date_create }</td>
							<td>${dto.review_count }</td>
							<td>${dto.review_like }</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</table>
	<hr>
	<input type="button" value="�л�������������" onclick="location.href='memberMain'"/>
	<input type="submit" value="�ı��ۼ�"/>
	</form>
</body>
</html>