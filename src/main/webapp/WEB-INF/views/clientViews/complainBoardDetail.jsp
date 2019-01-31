<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>건의사항 글 보기</title>

<!-- 드롭다운 -->
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.6.2/css/font-awesome.min.css">
<link rel="stylesheet"type="text/css" href="${pageContext.request.contextPath}/resources/css/dropdown.css">


<link href="${pageContext.request.contextPath}/resources/css/boarddetail.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

<!-- Plugin CSS 팝업창 숨기는-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/magnific-popup/magnific-popup.css">

<!-- Custom styles for this template -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/freelancer.min.css">

</head>
<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg bg-secondary fixed-top text-uppercase" id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="clientMain">KHC</a>
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

					<li><a href="#">마이페이지<i class='fa fa-angle-down'></i></a>
						<ul>
							<li><a href="myPage?member_no=${regist_dto.member_no }">내 업체 정보</a></li>
							<li><a href="my_salesPage">매출현황</a></li>
							<li><a href="menu_list?client_no=${client_dto.client_no }">메뉴관리</a></li>
							<li><a href="my_mapPage">오시는길</a></li>
						</ul>
					</li>

				</ul>
			</div>
		</div>
			<h6 style="color:white;">${regist_dto.member_name } 님  환영합니다.</h6>
	</nav>
	
	<!-- Header -->
	<header class="masthead bg-primary text-white text-center">
		<img class="img-fluid mb-5 d-block mx-auto" src="${pageContext.request.contextPath}/resources/img/건의사항.png" alt="">
	<h2>건의사항 게시판</h2>
	</header>

	<section  class="portfolio" id="portfolio">
	<div class="container" style="height: 700px;" >
			<hr>
			
			<div class="subject_form">
				<div class="subject">카테고리</div>
				<div class="form-group">${dto.complain_category }</div>
			</div>

			<div class="subject_form">
				<div class="subject">제목</div>
				<div class="form-group">${dto.complain_title }</div>
			</div>

			<div class="writer_form">
				<div class="write">글쓴이</div>
				<div class="writer">${dto.complain_writer }</div>
				<div class="hit">조회수 : &nbsp;&nbsp;${dto.complain_count }</div>
				<div class="date_form">
					작성일 :&nbsp;&nbsp;
					<fmt:formatDate value="${dto.complain_date_create }" pattern="yyyy.MM.dd" />
				</div>
			</div>
			<br>
			<br>
			<br>
			
			<div class="content">
				${dto.complain_content }
			</div>

				<div class="button_container">
				<div class="update_button">
					<a class="upde" href="complain_updateform?complain_no=${dto.complain_no}">
					<button type="submit" class="btn btn-primary" style="text-align: right;">수정</button></a>
				</div>
				<div class="delete_button">
					<a class="upde" href="location.href='complain_delete?complain_no=${dto.complain_no}">
					<button type="submit" class="btn btn-primary" style="text-align: right;">삭제</button></a>
				</div>
				<br>
				<br>
				<hr>
				<div style="text-align: right;">
					<button type="button" class="btn btn-primary" onclick="location.href='complain_board_list'">목록으로</button>
				</div>
			</div>
	</div>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
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
	
	<!-- 제휴문의 모달창6 -->
	<div class="portfolio-modal mfp-hide" id="portfolio-modal-6">
		<div class="portfolio-modal-dialog bg-white">
			<a class="close-button d-none d-md-block portfolio-modal-dismiss"
				href="#"> <i class="fa fa-3x fa-times"></i>
			</a>
			<div class="container text-center">
				<div class="row">
					<div class="col-lg-8 mx-auto">
						<h2 class="text-secondary text-uppercase mb-0">제휴문의</h2>
						<hr class="star-dark mb-5">
						<p class="mb-5"> 제휴문의 값 들어가는 부분 </p>
						<a class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss" href="#"> <i class="fa fa-close"></i> Close </a>
					</div>
				</div>
			</div>
		</div>
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
</body>
</html>