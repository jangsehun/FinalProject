<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	  
    $("#condition").change(function(){      
       var condition = $("#condition option:selected").val();
       location.href="review_insert?condition="+condition;   
    });
    
});

</script>
<meta charset="EUC-KR">
<title>�ı� �ۼ� ������</title>
</head>
<body>
	${regist_dto.member_name }�� ȯ���մϴ�.
	<h1>�ı� �ۼ� ������</h1>
	<form action="review_insert" method="post">
	<table border="1">
		<tr>
			<th>�ۼ���</th>
			<td><input type="text" value="${regist_dto.member_name }" name="review_writer" readonly="readonly"/></td>
		</tr>
		<tr>
			<th>����</th>
			<td>
				<select id="condition">
					<option value="��ü" <c:if test="${Name eq '��ü'}">selected</c:if>>��ü</option>
					<option value="7Gram" <c:if test="${param.condition=='7Gram'}">selected</c:if>>7Gram</option>
					<option value="����â��" <c:if test="${param.condition=='����â��'}">selected</c:if>>����â��</option>
					<option value="�������" <c:if test="${param.condition=='�������'}">selected</c:if>>�������</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>����</th>
			<td><input type="text" name="review_title"/></td>
		</tr>
		<tr>
			<th>����</th>
			<td><textarea rows="10" cols="60" name="review_content"></textarea></td>
		</tr>
	</table>
	<hr>
	<input type="button" value="���" onclick="location.href='review_insertform'"/>
	<input type="submit" value="�ı���"/>
	</form>
</body>
</html>