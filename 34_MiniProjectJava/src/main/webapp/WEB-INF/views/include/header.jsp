<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/header.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@900&display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/def66b134a.js"
	crossorigin="anonymous"></script>
</head>

<body>
	<!-- 우측 상단 네비게이터 -->
	<div class="flex-container flex-end">


		<div class="flex-item ">로그인</div>
		&nbsp;&nbsp;
		<div class="flex-item ">회원가입</div>
		&nbsp;&nbsp;
		<div class="flex-item ">마이페이지</div>
		&nbsp;&nbsp;
		<div class="flex-item ">장바구니</div>
		&nbsp;&nbsp;
		<div class="flex-item ">고객센터</div>
	</div>
	<!-- 우측 상단 네비게이터 끝 -->

	<!-- 로고 -->
	<div class="container">

		<!-- <div class="flex-item "><img src="images/image1.png"></div> -->
		<div class="flex-logo">eZen Computer</div>

		<!-- 검색창 -->
		<div class="flex-item">
			<form action="." method="post">
				<!-- search box -->
				<div class="search">
					<form action="">
						<input class="search_input" type="text" name="" id=""
							placeholder="검색어 입력...">
						<!-- 버튼
						<button type="submit">
							 <span class="fa fa-search"></span> 
						</button>
						 -->
					</form>
				</div>
				<!-- / search box -->
			</form>
		</div>
		<!-- 검색창 끝-->

	</div>
	<!-- 로고 끝-->

	<!-- 메인 컨테이너 -->
	<div class="container" style="margin-bottom: 50px;">

		<!-- 배너 -->
		<div class="p-3 mb-2 bg-primary text-white " style="height: 80px;"></div>

		<!-- 네비게이션 바 -->
		<ul class="nav nav-pills nav-fill bg-light">
			<!-- 버튼1-->
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="dropdownMenuLink"
				role="button" data-bs-toggle="dropdown" aria-expanded="false">
					CPU </a>
				<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
					<li><h6 class="dropdown-header">cpu는 역시 인텔이죠?</h6></li>
					<li><a class="dropdown-item" href="#">cpu1_1</a></li>
					<li><a class="dropdown-item" href="#">cpu1_2</a></li>
					<li><h6 class="dropdown-header">이젠 리사수의 시대</h6></li>
					<li><a class="dropdown-item" href="#">cpu2_1</a></li>
					<li><a class="dropdown-item" href="#">cpu2_2</a></li>
				</ul></li>


			<!-- 버튼2 -->
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="dropdownMenuLink"
				role="button" data-bs-toggle="dropdown" aria-expanded="false">
					메인보드 </a>
				<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
					<li><h6 class="dropdown-header">cpu는 역시 인텔이죠?</h6></li>
					<li><a class="dropdown-item" href="#">cpu1_1</a></li>
					<li><a class="dropdown-item" href="#">cpu1_2</a></li>
					<li><h6 class="dropdown-header">이젠 리사수의 시대</h6></li>
					<li><a class="dropdown-item" href="#">cpu2_1</a></li>
					<li><a class="dropdown-item" href="#">cpu2_2</a></li>
				</ul></li>

			<!-- 버튼3 -->
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="dropdownMenuLink"
				role="button" data-bs-toggle="dropdown" aria-expanded="false">
					메모리 </a>
				<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
					<li><h6 class="dropdown-header">cpu는 역시 인텔이죠?</h6></li>
					<li><a class="dropdown-item" href="#">cpu1_1</a></li>
					<li><a class="dropdown-item" href="#">cpu1_2</a></li>
					<li><h6 class="dropdown-header">이젠 리사수의 시대</h6></li>
					<li><a class="dropdown-item" href="#">cpu2_1</a></li>
					<li><a class="dropdown-item" href="#">cpu2_2</a></li>
				</ul></li>

			<!-- 버튼4 -->
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="dropdownMenuLink"
				role="button" data-bs-toggle="dropdown" aria-expanded="false">
					VGA </a>
				<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
					<li><h6 class="dropdown-header">cpu는 역시 인텔이죠?</h6></li>
					<li><a class="dropdown-item" href="#">cpu1_1</a></li>
					<li><a class="dropdown-item" href="#">cpu1_2</a></li>
					<li><h6 class="dropdown-header">이젠 리사수의 시대</h6></li>
					<li><a class="dropdown-item" href="#">cpu2_1</a></li>
					<li><a class="dropdown-item" href="#">cpu2_2</a></li>
				</ul></li>

			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="dropdownMenuLink"
				role="button" data-bs-toggle="dropdown" aria-expanded="false">
					SSD </a>
				<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
					<li><h6 class="dropdown-header">cpu는 역시 인텔이죠?</h6></li>
					<li><a class="dropdown-item" href="#">cpu1_1</a></li>
					<li><a class="dropdown-item" href="#">cpu1_2</a></li>
					<li><h6 class="dropdown-header">이젠 리사수의 시대</h6></li>
					<li><a class="dropdown-item" href="#">cpu2_1</a></li>
					<li><a class="dropdown-item" href="#">cpu2_2</a></li>
				</ul></li>

			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="dropdownMenuLink"
				role="button" data-bs-toggle="dropdown" aria-expanded="false">
					HDD </a>
				<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
					<li><h6 class="dropdown-header">cpu는 역시 인텔이죠?</h6></li>
					<li><a class="dropdown-item" href="#">cpu1_1</a></li>
					<li><a class="dropdown-item" href="#">cpu1_2</a></li>
					<li><h6 class="dropdown-header">이젠 리사수의 시대</h6></li>
					<li><a class="dropdown-item" href="#">cpu2_1</a></li>
					<li><a class="dropdown-item" href="#">cpu2_2</a></li>
				</ul></li>

			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="dropdownMenuLink"
				role="button" data-bs-toggle="dropdown" aria-expanded="false">
					파워 </a>
				<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
					<li><h6 class="dropdown-header">cpu는 역시 인텔이죠?</h6></li>
					<li><a class="dropdown-item" href="#">cpu1_1</a></li>
					<li><a class="dropdown-item" href="#">cpu1_2</a></li>
					<li><h6 class="dropdown-header">이젠 리사수의 시대</h6></li>
					<li><a class="dropdown-item" href="#">cpu2_1</a></li>
					<li><a class="dropdown-item" href="#">cpu2_2</a></li>
				</ul></li>

			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="dropdownMenuLink"
				role="button" data-bs-toggle="dropdown" aria-expanded="false">
					쿨러 </a>
				<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
					<li><h6 class="dropdown-header">cpu는 역시 인텔이죠?</h6></li>
					<li><a class="dropdown-item" href="#">cpu1_1</a></li>
					<li><a class="dropdown-item" href="#">cpu1_2</a></li>
					<li><h6 class="dropdown-header">이젠 리사수의 시대</h6></li>
					<li><a class="dropdown-item" href="#">cpu2_1</a></li>
					<li><a class="dropdown-item" href="#">cpu2_2</a></li>
				</ul></li>

			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="dropdownMenuLink"
				role="button" data-bs-toggle="dropdown" aria-expanded="false">
					케이스 </a>
				<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
					<li><h6 class="dropdown-header">cpu는 역시 인텔이죠?</h6></li>
					<li><a class="dropdown-item" href="#">cpu1_1</a></li>
					<li><a class="dropdown-item" href="#">cpu1_2</a></li>
					<li><h6 class="dropdown-header">이젠 리사수의 시대</h6></li>
					<li><a class="dropdown-item" href="#">cpu2_1</a></li>
					<li><a class="dropdown-item" href="#">cpu2_2</a></li>
				</ul></li>
		</ul>
		<!-- 네비게이션 바 끝-->
	</div>
	<!-- 메인 컨테이너 끝 -->

</body>
</html>