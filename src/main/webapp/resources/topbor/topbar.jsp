<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>


<!-- ��Ӵٿ� -->
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.6.2/css/font-awesome.min.css">
<link rel="stylesheet"type="text/css" href="${pageContext.request.contextPath}/resources/css/dropdown.css">

<!-- Bootstrap core CSS -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">

<!-- Custom fonts for this template -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">

<!-- Plugin CSS �˾�â �����-->
<link rel="stylesheet" type="text/css"href="${pageContext.request.contextPath}/resources/vendor/magnific-popup/magnific-popup.css">

<!-- Custom styles for this template -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/freelancer.min.css">

</head>
<body>

	<!-- Navigation -->
	<nav
		class="navbar navbar-expand-lg bg-secondary fixed-top text-uppercase"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="clientMain">KHC</a>
			<button
				class="navbar-toggler navbar-toggler-right text-uppercase bg-primary text-white rounded"
				type="button" data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				ī�װ�<i class="fas fa-bars"></i>
			</button>
			
			<!-- ��ɴٿ� -->
				<div class="collapse navbar-collapse" id="navbarResponsive">
					<ul>
						<li><a href="#">���޾�ü<i class='fa fa-angle-down'></i></a>
							<ul>
								<li><a href="client_myPagebeerMain">����â��</a></li>
								<li><a href="client_sevenMain">7GRAM</a></li>
								<li><a href="client_magicMain">�������</a></li>
							</ul>
						</li>
					
						<li><a href="#">Ŀ�´�Ƽ<i class='fa fa-angle-down'></i></a>
							<ul>
								<li><a href="#">��������</a></li>
								<li><a href="complain_board_list">���ǻ���</a></li>
								<li><a href="review_board_list">�̿��ı�</a></li>
							</ul>
						</li>
					
						<li><a href="#">����������<i class='fa fa-angle-down'></i></a>
							<ul>
								<li><a href="myPage?member_no=${regist_dto.member_no }">�� ��ü ����</a></li>
								<li><a href="my_salesPage">������Ȳ</a></li>
								<li><a href="menu_list?client_no=${client_dto.client_no }">�޴�����</a></li>
								<li><a href="my_mapPage">���ô±�</a></li>
							</ul>
						</li>

					</ul>
				</div>
			</div>
			<h6 style="color:white;">${regist_dto.member_name } ��  ȯ���մϴ�.</h6>

	</nav>
	
	
	<!-- Bootstrap core JavaScript (�׺���̼� �� ����)-->
	<script src="<c:url value="/resources/vendor/jquery/jquery.min.js" />"></script>
	<script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>

	<!-- Plugin JavaScript -->
	<script src="<c:url value="/resources/vendor/jquery-easing/jquery.easing.min.js" />"></script>
	<script src="<c:url value="/resources/vendor/magnific-popup/jquery.magnific-popup.min.js" />"></script>
	<!-- Custom scripts for this template -->
	<script src="<c:url value="/resources/js/freelancer.min.js" />"></script>
	
	<!-- ��Ӵٿ� -->
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