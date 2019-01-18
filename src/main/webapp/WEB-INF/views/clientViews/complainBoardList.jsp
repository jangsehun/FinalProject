<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
  
    $("#condition").change(function(){      
       var condition = $("#condition option:selected").val();
       var u_no = $(".uno").attr("id");
       //alert(u_no);      
       location.href="RBoardController?command=rboard_search&condition="+condition+"&u_no="+u_no;   
    });
    
});
</script>
<meta charset="UTF-8">
<title>건의사항 게시판 페이지</title>
</head>
<body>

${regist_dto.member_name }님 환영합니다.<br>
   <h1>이용후기 게시판</h1>
   <form action="complain_insertform">
   <select id="condition">
      <option>전체</option>
      <option>7Gram</option>
      <option>맥주창고</option>
      <option>요술포차</option>
   </select>
   <table border="1">
      <tr>
         <th>번호</th>
         <th>분류</th>
         <th>제목</th>
         <th>작성일</th>
         <th>조회수</th>
         <th>좋아요</th>
      </tr>
         <c:choose>
            <c:when test="${empty list }">
               <tr>
                  <td colspan="1">-------작성한 글이 없습니다-------</td>
               </tr>
            </c:when>
            <c:otherwise>
               <c:forEach items="${list }" var="dto">
                  <tr>
                     <td>${dto.complain_no }</td>
                     <td>${dto.complain_category }</td>
                     <td><a href="complain_detail?complain_no=${dto.complain_no }">${dto.complain_title }</a></td>
                     <td>${dto.complain_date_create }</td>
                     <td>${dto.complain_count }</td>
                     <td>${dto.complain_like }</td>
                  </tr>
               </c:forEach>
            </c:otherwise>
         </c:choose>
      </table>
   <hr>
   <input type="button" value="제휴업체 메인페이지로" onclick="location.href='clientMain'"/>
   <input type="submit" value="건의사항작성"/>
   </form>
</body>
</html>