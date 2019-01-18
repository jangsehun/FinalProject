<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>제휴업체 신청</h1>

<form action="insert?member_no=${client_dto.member_no }" method="post">

	<table border="1">
		<tr>
			<th>제휴업체 이름</th>
			<td><input type="text" name="client_name_store"></td>
		</tr>
		<tr>
			<th>제휴업체 전화번호</th>
			<td><input type="text" name="client_phone_store"></td>
		</tr>
		<tr>
			<th>제휴업체 주소</th>
			<td><input type="text" name="client_address"></td>
		</tr>
		<tr>
			<th>제휴업체 등록</th>
			<td><input type="radio" name="client_registration" id="radio1" value="Y">예
			<input type="radio" name="client_registration" id="radio1" value="N">아니오</td>
		</tr>
		<tr>
			<th>제휴업체 예약최대인원</th>
			<td><input type="text" name="client_max_client"></td>
		</tr>
			<tr>
			<th>제휴업체 예약</th>
			<td><input type="radio" name="client_reservation" id="radio2" value="Y">예
			<input type="radio" name="client_reservation" id="radio2" value="N">아니오</td>
		</tr>
		<tr>
			<td colspan="2"><input type = "submit" value="가입"></td>
		</tr>		
	</table>
	</form>
	

</body>
</html>


















