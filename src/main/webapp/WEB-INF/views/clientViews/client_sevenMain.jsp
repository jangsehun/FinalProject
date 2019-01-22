<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
<link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/resources/vendor/magnific-popup/magnific-popup.css">

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
			
			<!-- 드옵다운 -->
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
							</ul>
						</li>
					
						<li class='sub-menu'><a href="myPage">마이페이지<i class='fa fa-angle-down'></i></a>
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
		<div class="container">
			<img class="img-fluid mb-5 d-block mx-auto"
				src="${pageContext.request.contextPath}/resources/img/profile.png"
				alt="">
			<h1 class="text-uppercase mb-2">7GAM 메인화면 입니다.<br>
			</h1>
		</div>
	</header>

	<!-- Portfolio Grid Section -->
	<section class="portfolio" id="portfolio">
		<div class="container">
			<h2 class="text-center text-uppercase text-secondary mb-0">제휴업체</h2>
			<hr class="star-dark mb-5">
			<div class="row">
				<div class="col-md-6 col-lg-4">
					<a class="portfolio-item d-block mx-auto" href="#portfolio-modal-3">
						<div class="portfolio-item-caption d-flex position-absolute h-100 w-100">
							<div class="portfolio-item-caption-content my-auto w-100 text-center text-white">
								<i class="fas fa-search-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/맥주창고.jpg" alt="">
					</a>
				</div>
				<div class="col-md-6 col-lg-4">
					<a class="portfolio-item d-block mx-auto" href="#portfolio-modal-4">
						<div class="portfolio-item-caption d-flex position-absolute h-100 w-100">
							<div class="portfolio-item-caption-content my-auto w-100 text-center text-white">
								<i class="fas fa-search-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/7gram.jpg" alt="">
					</a>
				</div>
				<div class="col-md-6 col-lg-4">
					<a class="portfolio-item d-block mx-auto" href="#portfolio-modal-5">
						<div class="portfolio-item-caption d-flex position-absolute h-100 w-100">
							<div class="portfolio-item-caption-content my-auto w-100 text-center text-white">
								<i class="fas fa-search-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/요술포차.png" alt="">
					</a>
				</div>
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

	<!-- Portfolio Modals -->

	<!-- Portfolio Modal 1 -->
	<div class="portfolio-modal mfp-hide" id="portfolio-modal-1">
		<div class="portfolio-modal-dialog bg-white">
			<a class="close-button d-none d-md-block portfolio-modal-dismiss"
				href="#"> <i class="fa fa-3x fa-times"></i>
			</a>
			<div class="container text-center">
				<div class="row">
					<div class="col-lg-8 mx-auto">
						<h2 class="text-secondary text-uppercase mb-0">로그인</h2>
						<hr class="star-dark mb-5">
						<img class="img-fluid mb-5"
							src="${pageContext.request.contextPath}/resources/img/portfolio/cabin.png"
							alt="">
						<p class="mb-5">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias
							magnam, recusandae quos quis inventore quisquam velit asperiores,
							vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
						<a
							class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss"
							href="#"> <i class="fa fa-close"></i> Close Project
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 2 -->
	<div class="portfolio-modal mfp-hide" id="portfolio-modal-2">
		<div class="portfolio-modal-dialog bg-white">
			<a class="close-button d-none d-md-block portfolio-modal-dismiss"
				href="#"> <i class="fa fa-3x fa-times"></i>
			</a>
			<div class="container text-center">
				<div class="row">
					<div class="col-lg-8 mx-auto">
						<h2 class="text-secondary text-uppercase mb-0">회원가입</h2>
						<hr class="star-dark mb-5">
						<img class="img-fluid mb-5"
							src="${pageContext.request.contextPath}/resources/img/portfolio/cake.png"
							alt="">
						<p class="mb-5">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias
							magnam, recusandae quos quis inventore quisquam velit asperiores,
							vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
						<a
							class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss"
							href="#"> <i class="fa fa-close"></i> Close Project
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 3 -->
	<div class="portfolio-modal mfp-hide" id="portfolio-modal-3">
		<div class="portfolio-modal-dialog bg-white">
			<a class="close-button d-none d-md-block portfolio-modal-dismiss"
				href="#"> <i class="fa fa-3x fa-times"></i>
			</a>
			<div class="container text-center">
				<div class="row">
					<div class="col-lg-8 mx-auto">
						<h2 class="text-secondary text-uppercase mb-0">맥주창고</h2>
						<hr class="star-dark mb-5">
						<img class="img-fluid mb-5"
							src="${pageContext.request.contextPath}/resources/img/맥주창고.jpg"
							alt="">
						<p class="mb-5">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias
							magnam, recusandae quos quis inventore quisquam velit asperiores,
							vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
						<a
							class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss"
							href="#"> <i class="fa fa-close"></i> Close
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 4 -->
	<div class="portfolio-modal mfp-hide" id="portfolio-modal-4">
		<div class="portfolio-modal-dialog bg-white">
			<a class="close-button d-none d-md-block portfolio-modal-dismiss"
				href="#"> <i class="fa fa-3x fa-times"></i>
			</a>
			<div class="container text-center">
				<div class="row">
					<div class="col-lg-8 mx-auto">
						<h2 class="text-secondary text-uppercase mb-0">7GRAM</h2>
						<hr class="star-dark mb-5">
						<img class="img-fluid mb-5"
							src="${pageContext.request.contextPath}/resources/img/7gram.jpg"
							alt="">
						<p class="mb-5">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias
							magnam, recusandae quos quis inventore quisquam velit asperiores,
							vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
						<a
							class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss"
							href="#"> <i class="fa fa-close"></i> Close
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 5 -->
	<div class="portfolio-modal mfp-hide" id="portfolio-modal-5">
		<div class="portfolio-modal-dialog bg-white">
			<a class="close-button d-none d-md-block portfolio-modal-dismiss"
				href="#"> <i class="fa fa-3x fa-times"></i>
			</a>
			<div class="container text-center">
				<div class="row">
					<div class="col-lg-8 mx-auto">
						<h2 class="text-secondary text-uppercase mb-0">요술포차</h2>
						<hr class="star-dark mb-5">
						<img class="img-fluid mb-5"
							src="${pageContext.request.contextPath}/resources/img/요술포차.png"
							alt="">
						<p class="mb-5">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias
							magnam, recusandae quos quis inventore quisquam velit asperiores,
							vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
						<a
							class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss"
							href="#"> <i class="fa fa-close"></i> Close
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 6 -->
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
						<img class="img-fluid mb-5"
							src="${pageContext.request.contextPath}/resources/img/portfolio/submarine.png"
							alt="">
						<p class="mb-5">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias
							magnam, recusandae quos quis inventore quisquam velit asperiores,
							vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
						<a
							class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss"
							href="#"> <i class="fa fa-close"></i> Close
						</a>
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




