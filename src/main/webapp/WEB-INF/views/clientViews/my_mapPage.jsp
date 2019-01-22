<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업체페이지</title>

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


<!-- 지도관련 style -->
<style>
#map {
	height: 100%;
}

html, body {
	height: 100%;
	margin: 0;
	padding: 0;
}
</style>
      
      
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


<style>
@import
	url('http://fonts.googleapis.com/css?family=Open+Sans:300,400,700');

@import
	url('http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css')
	;

body {
	color: #5D5F63;
	background: #293949;
	font-family: 'Open Sans', sans-serif;
	padding: 0;
	margin: 0;
	text-rendering: optimizeLegibility;
	-webkit-font-smoothing: antialiased;
}

.sidebar-toggle {
	margin-left: -240px;
}

.sidebar {
	width: 240px;
	height: 110%;
	background: #293949;
	position: absolute;
	-webkit-transition: all 0.3s ease-in-out;
	-moz-transition: all 0.3s ease-in-out;
	-o-transition: all 0.3s ease-in-out;
	-ms-transition: all 0.3s ease-in-out;
	transition: all 0.3s ease-in-out;
	z-index: 100;
}

.sidebar #leftside-navigation ul, .sidebar #leftside-navigation ul ul {
	margin: -2px 0 0;
	padding: 0;
}

.sidebar #leftside-navigation ul li {
	list-style-type: none;
	border-bottom: 1px solid rgba(255, 255, 255, 0.05);
}

.sidebar #leftside-navigation ul li.active>a {
	color: #1abc9c;
}

.sidebar #leftside-navigation ul li.active ul {
	display: block;
}

.sidebar #leftside-navigation ul li a {
	color: #aeb2b7;
	text-decoration: none;
	display: block;
	padding: 18px 0 18px 25px;
	font-size: 12px;
	outline: 0;
	-webkit-transition: all 200ms ease-in;
	-moz-transition: all 200ms ease-in;
	-o-transition: all 200ms ease-in;
	-ms-transition: all 200ms ease-in;
	transition: all 200ms ease-in;
}

.sidebar #leftside-navigation ul li a:hover {
	color: #1abc9c;
}

.sidebar #leftside-navigation ul li a span {
	display: inline-block;
}

.sidebar #leftside-navigation ul li a i {
	width: 20px;
}

.sidebar #leftside-navigation ul li a i .fa-angle-left, .sidebar #leftside-navigation ul li a i .fa-angle-right
	{
	padding-top: 3px;
}

.sidebar #leftside-navigation ul ul {
	display: none;
}

.sidebar #leftside-navigation ul ul li {
	background: #23313f;
	margin-bottom: 0;
	margin-left: 0;
	margin-right: 0;
	border-bottom: none;
}

.sidebar #leftside-navigation ul ul li a {
	font-size: 12px;
	padding-top: 13px;
	padding-bottom: 13px;
	color: #aeb2b7;
}
</style>


</head>
<body>


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

	<!-- 왼쪽 메뉴바 -->
	<aside class="sidebar">
		<div id="leftside-navigation" class="nano">
			<br>
			<br>
			<br>
			<br>
			<br>
			<ul class="nano-content">
				<li class="sub-menu">
					<a href="myPage">
					<i class="fa fa-file"></i><span>내 업체 정보</span><i class="arrow fa fa-angle-right pull-right"></i></a>
				</li>
				<li class="my_salesPage">
					<a href="my_salesPage">
					<i class="fa fa-bar-chart-o"></i><span>매출현황</span><i class="arrow fa fa-angle-right pull-right"></i></a>
				</li>
				<li class="sub-menu">
					<a href="#">
					<i class="fa fa fa-tasks"></i><span>메뉴 관리</span><i class="arrow fa fa-angle-right pull-right"></i></a>
				</li>
				<li class="sub-menu">
					<a href="my_mapPage">
					<i class="fa fa-map-marker"></i><span>오시는길</span><i class="arrow fa fa-angle-right pull-right"></i></a>
				</li>

			</ul>
		</div>
	</aside>
	
	<!-- 지도나오는 부분 -->
	<header class="masthead bg-primary text-white text-center">
			<h2 class="text-center text-uppercase text-secondary mb-0">오시는길</h2>
			<div id="map"></div>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
	</header>

	
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
	
	<!-- 사이드 메뉴바 -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
	<script>
		$("#leftside-navigation .sub-menu > a").click(
				function(e) {
					$("#leftside-navigation ul ul").slideUp(), $(this).next()
							.is(":visible")
							|| $(this).next().slideDown(), e.stopPropagation()
				})
	</script>


	<!-- 지도api -->
	 <script>
    		  var map;
   		   function initMap() {
    		    map = new google.maps.Map(document.getElementById('map'), {
     		     center: {lat: -34.397, lng: 150.644},
      		    zoom: 8
      		  });
     		 }
	</script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBZJabmz4nl1CgHEFdKOc_KqapQt7N1m-s&callback=initMap" async defer></script> 


</body>
</html>