<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	response.setContentType("text/html; charset=UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>제휴업체 메인페이지</title>

<!-- 드롭다운 -->
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.6.2/css/font-awesome.min.css">

<!-- Bootstrap core CSS -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">

<!-- Custom fonts for this template -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">

<!-- Plugin CSS 팝업창 숨기는-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/magnific-popup/magnific-popup.css">

<!-- Custom styles for this template -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/freelancer.min.css">

<!-- 드롭다운관련 style -->
<style>
@import url(https://fonts.googleapis.com/css?family=Roboto:400,700,500);

/* main Styles */
html {
	box-sizing: border-box;
}

*, *:before, *:after {
	box-sizing: inherit;
}

body {
	background: #fafafa;
	font-family: "Roboto", sans-serif;
	font-size: 14px;
	margin: 0;
}

a {
	text-decoration: none;
}

.container {
	width: 1000px;
	margin: auto;
}

h1 {
	text-align: center;
	margin-top: 150px;
}

/* Navigation Styles */
nav {
	background: #2ba0db;
}

nav ul {
	font-size: 0;
	margin: 0;
	padding: 0;
}

nav ul li {
	display: inline-block;
	position: relative;
}

nav ul li a {
	color: #fff;
	display: block;
	font-size: 14px;
	padding: 15px 14px;
	transition: 0.3s linear;
}

nav ul li:hover {
	background: #126d9b;
}

nav ul li ul {
	border-bottom: 5px solid #2ba0db;
	display: none;
	position: absolute;
	width: 250px;
}

nav ul li ul li {
	border-top: 1px solid #444;
	display: block;
}

nav ul li ul li:first-child {
	border-top: none;
}

nav ul li ul li a {
	background: #373737;
	display: block;
	padding: 10px 14px;
}

nav ul li ul li a:hover {
	background: #126d9b;
}

nav .fa.fa-angle-down {
	margin-left: 6px;
}
</style>
<meta charset="UTF-8">
<title>건의사항 게시판 페이지</title>
</head>

<body id="page-top">

	<!-- Navigation -->
	<nav
		class="navbar navbar-expand-lg bg-secondary fixed-top text-uppercase"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="#page-top">KHC</a>
			<button
				class="navbar-toggler navbar-toggler-right text-uppercase bg-primary text-white rounded"
				type="button" data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				카테고리<i class="fas fa-bars"></i>
			</button>

			<!-- 드롭다운 -->
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul>
					<li><a href="#">제휴업체<i class='fa fa-angle-down'></i></a>
						<ul>
							<li><a href="client_beerMain">맥주창고</a></li>
							<li><a href="client_sevenMain">7GRAM</a></li>
							<li><a href="client_magicMain">요술포차</a></li>
						</ul>
					</li>

					<li><a href="#">커뮤니티<i class='fa fa-angle-down'></i></a>
						<ul>
							<li><a href="#">공지사항</a></li>
							<li><a href="complain_board_list">건의사항</a></li>
							<li><a href="review_board_list">이용후기</a></li>
						</ul></li>

					<li class='sub-menu'><a href="#">마이페이지<i class='fa fa-angle-down'></i></a>
						<ul>
							<li><a href="myPage">내 업체 정보</a></li>
							<li><a href="my_salesPage">매출현황</a></li>
							<li><a href="#">메뉴관리</a></li>
							<li><a href="my_mapPage">오시는길</a></li>
						</ul>
					</li>

				</ul>
			</div>
		</div>
		<h3 class="text-uppercase mb-1">${regist_dto.member_name } 님  환영합니다.</h3>
	</nav>
	
	
	
	
	
	
	<!-- Header -->
	<header class="masthead bg-primary text-white text-center">
	<h2>건의사항 게시판</h2>
	</header>
	
	
	<section class="portfolio" id="portfolio">
	<div class="container">
	<div class="boardcss_list_table">
		<select id="condition">
			<option value="전체" <c:if test="${Name eq '전체'}">selected</c:if>>전체</option>
			<option value="7Gram"
				<c:if test="${param.condition=='7Gram'}">selected</c:if>>7Gram</option>
			<option value="맥주창고"
				<c:if test="${param.condition=='맥주창고'}">selected</c:if>>맥주창고</option>
			<option value="요술포차"
				<c:if test="${param.condition=='요술포차'}">selected</c:if>>요술포차</option>
		</select>
		<table class="list_table">
		<colgroup>
			<col width="10%" />
			<col width="20%" />
			<col width="25%" />
			<col width="25%" />
			<col width="10%" />
			<col width="10%" />
		</colgroup>
		<thead> 
			<tr> 
				<th>번호</th>
				<th>분류</th>
				<th>제목</th>
				<th>작성일</th>
				<th>조회수</th>
				<th>좋아요</th>
			</tr>
		</thead>
			<c:choose>
				<c:when test="${empty list }">
					<tr>
						<td>작성 글 없음</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach items="${list }" var="dto">
						<tr>
							<td>${dto.complain_no }</td>
							<td>${dto.complain_category }</td>
							<td><a href="complain_detail?complain_no=${dto.complain_no }">${dto.complain_title }</a></td>
							<td><fmt:formatDate value="${dto.complain_date_create }" pattern="yyyy.MM.dd" /></td>	
							<td>${dto.complain_count }</td>
							<td>${dto.complain_like }</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</table>
	<hr>
	<input type="button" value="제휴업체 메인페이지로" onclick="location.href='clientMain'" />
	<input type="submit" value="건의사항작성" />
		
	</div>
	</div>

	</section>


	
	
	<!-- Footer -->
	<footer class="footer text-center">
		<div class="container">
			<div class="row">
				<div class="col-md-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">KH정보교육원</h4>
					<h4 class="text-uppercase mb-2">@(주)세훈팩토리</h4>
				</div>
				<div class="col-md-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">제휴업체 문의</h4>
					<h4 class="text-uppercase mb-4">전화: 010-1234-1234</h4>
					<h4 class="text-uppercase mb-4">주소: 서울특별시 테헤란로 1000-1</h4>
				</div>
				<div class="portfolio-item d-block mx-auto" href="#portfolio-modal-6">
					<button class="btn btn-primary btn-xl">제휴업체 문의하기</button>
				</div>
			</div>
		</div>
	</footer>
	
	<!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
	<div class="scroll-to-top d-lg-none position-fixed ">
		<a class="js-scroll-trigger d-block text-center text-white rounded"
			href="#page-top"> <i class="fa fa-chevron-up"></i>
		</a>
	</div>

<!-- Bootstrap core JavaScript (네비게이션 바 연관)-->
<script src="<c:url value="/resources/vendor/jquery/jquery.min.js" />"></script>
<script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>

<!-- Plugin JavaScript -->
<script src="<c:url value="/resources/vendor/jquery-easing/jquery.easing.min.js" />"></script>
<script src="<c:url value="/resources/vendor/magnific-popup/jquery.magnific-popup.min.js" />"></script>
<!-- Custom scripts for this template -->
<script src="<c:url value="/resources/js/freelancer.min.js" />"></script>

<!-- 드롭다운 -->
<script src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
<script>
	$('nav li').hover(function() {
		$('ul', this).stop().slideDown(200);
	}, function() {
		$('ul', this).stop().slideUp(200);
	});
</script>

<!-- 카테고리선택관련 -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

		$("#condition").change(function() {
			var condition = $("#condition option:selected").val();
			location.href = "complain_search?condition=" + condition;
		});

	});
</script>
	
</body>

</html>