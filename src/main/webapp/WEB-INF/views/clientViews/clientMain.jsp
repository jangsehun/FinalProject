<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>제휴업체 메인페이지</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">

<!-- Custom fonts for this template -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

<!-- Plugin CSS -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/magnific-popup/magnific-popup.css">

<!-- Custom styles for this template -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/freelancer.min.css">

</head>

<body id="page-top">

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg bg-secondary fixed-top text-uppercase" id="mainNav">
		<div class="container" >
			<a class="navbar-brand js-scroll-trigger" href="#page-top">KHC</a>
			<button class="navbar-toggler navbar-toggler-right text-uppercase bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
				카테고리<i class="fas fa-bars"></i></button>
			
				<!--  드롭다운-->
				<div class="collapse navbar-collapse" id="navbarResponsive" >
				
					<div class="dropdown">
						<button class="dropdown-item" type="button" data-toggle="dropdown">
							<h4 class="text-uppercase mb-2">제휴업체</h4>
						</button>
						<div class="dropdown-menu">
							<a class="dropdown-item" href=""><strong style="color: dark;">맥주창고</strong></a>
							<a class="dropdown-item" href=""><strong style="color: dark;">7GRAM</strong></a>
							<a class="dropdown-item" href=""><strong style="color: dark;">요술포차</strong></a>
						</div>
					</div>


					<div class="dropdown">
						<button class="dropdown-item" type="button" data-toggle="dropdown">
							<h4 class="text-uppercase mb-2">커뮤니티</h4>
						</button>
						<div class="dropdown-menu">
							<a class="dropdown-item" href=""><strong style="color: dark;">공지사항</strong></a>
							<a class="dropdown-item" href="client/complain_board_list"><strong style="color: dark;">건의사항</strong></a>
							<a class="dropdown-item" href=""><strong style="color: dark;">이용후기</strong></a>
						</div>
					</div>

					<div class="dropdown">
						<button class="dropdown-item" type="button" data-toggle="dropdown">
							<h4 class="text-uppercase mb-2">마이페이지</h4>
						</button>
						<div class="dropdown-menu">
							<a class="dropdown-item" href=""><strong style="color: dark;">내 업체 정보</strong></a>
							<a class="dropdown-item" href=""><strong style="color: dark;">매출현황</strong></a>
							<a class="dropdown-item" href=""><strong style="color: dark;">메뉴수정</strong></a>
						</div>
					</div>
				</div>
				</div>
				<h4 class="text-uppercase mb-2">${regist_dto.member_name }님 환영합니다.</h4>

	</nav>


	<!-- Header -->
	<header class="masthead bg-primary text-white text-center">
		<div class="container">
			<img class="img-fluid mb-5 d-block mx-auto" src="${pageContext.request.contextPath}/resources/img/profile.png" alt="">
			<h1 class="text-uppercase mb-0">
				KH 제휴쿠폰 홈페이지 입니다.<br>
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
		<a class="js-scroll-trigger d-block text-center text-white rounded" href="#page-top"> <i class="fa fa-chevron-up"></i>
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
						<img class="img-fluid mb-5" src="${pageContext.request.contextPath}/resources/img/portfolio/cabin.png" alt="">
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
						<img class="img-fluid mb-5" src="${pageContext.request.contextPath}/resources/img/portfolio/cake.png" alt="">
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
						<img class="img-fluid mb-5" src="${pageContext.request.contextPath}/resources/img/맥주창고.jpg" alt="">
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
						<img class="img-fluid mb-5" src="${pageContext.request.contextPath}/resources/img/7gram.jpg" alt="">
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
						<img class="img-fluid mb-5" src="${pageContext.request.contextPath}/resources/img/요술포차.png" alt="">
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
						<img class="img-fluid mb-5" src="${pageContext.request.contextPath}/resources/img/portfolio/submarine.png"
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

	<!-- Bootstrap core JavaScript -->
	<script src="<c:url value="/resources/vendor/jquery/jquery.min.js" />"></script>
	<script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>
	
	<!-- Plugin JavaScript -->
	<script src="<c:url value="/resources/vendor/jquery-easing/jquery.easing.min.js" />"></script>
	<script src="<c:url value="/resources/vendor/magnific-popup/jquery.magnific-popup.min.js" />"></script>
	
	<!-- Contact Form JavaScript -->
	<script src="<c:url value="/resources/js/jqBootstrapValidation.js" />"></script>
	<script src="<c:url value="/resources/js/contact_me.js" />"></script>
	
	<!-- Custom scripts for this template -->
	<script src="<c:url value="/resources/js/freelancer.min.js" />"></script>
	
</body>


</html>




