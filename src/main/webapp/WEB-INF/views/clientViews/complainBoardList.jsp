<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
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
<meta charset="EUC-KR">
<title>���ǻ��� �Խ��� ������</title>
</head>
<body>

${regist_dto.member_name }�� ȯ���մϴ�.<br>
   <h1>�̿��ı� �Խ���</h1>
   <form action="complain_insertform">
   <select id="condition">
      <option>��ü</option>
      <option>7Gram</option>
      <option>����â��</option>
      <option>�������</option>
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
   <input type="button" value="���޾�ü ������������" onclick="location.href='clientMain'"/>
   <input type="submit" value="���ǻ����ۼ�"/>
   </form>
</body>
</html>