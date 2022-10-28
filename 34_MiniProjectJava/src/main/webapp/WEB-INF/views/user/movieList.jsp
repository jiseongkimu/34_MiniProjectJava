<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>

<!-- bootstrap -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

<!-- header.css -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/header.css">
<!-- main.css -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/main.css">

<!-- font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@900&display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/def66b134a.js"
	crossorigin="anonymous"></script>

<!-- popper -->
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
	integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
	crossorigin="anonymous"></script>
<!-- js -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js"
	integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk"
	crossorigin="anonymous"></script>

</head>
<body>

	<!--  헤더 -->
	<!--  헤더 끝-->

	<!-- 배너 -->


	<!-- 메인 컨테이너 -->
	<div class="container">

		<!-- 캐러셀(슬라이드) -->
		<div id="carouselExampleFade" class="carousel slide carousel-fade"
			data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="images/noimage.gif" height="600px" class="d-block w-100"
						alt="...">
				</div>
				<!-- 
				<c:forEach var="movie" items="${mlist}">
					<div class="carousel-item ">
						<img src="images/${movie.poster}" height="600px"
							class="d-block w-100" alt="...">
					</div>
				</c:forEach>
				 -->
				<div id="carouselExampleInterval" class="carousel slide"
					data-bs-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active" data-bs-interval="3000">
							<img src="images/slide_1.jpg" class="d-block w-100"
								id="slide_image">
							<div class="carousel-caption d-none d-md-block">
								<h5>First slide label</h5>
								<p>Some representative placeholder content for the first
									slide.</p>
							</div>
						</div>
						<div class="carousel-item" data-bs-interval="3000">
							<img src="images/slide_2.jpg" class="d-block w-100"
								id="slide_image">
							<div class="carousel-caption d-none d-md-block">
								<h5>Second slide label</h5>
								<p>Some representative placeholder content for the first
									slide.</p>
							</div>
						</div>
						<div class="carousel-item" data-bs-interval="3000">
							<img src="images/slide_3.jpg" class="d-block w-100"
								id="slide_image">
							<div class="carousel-caption d-none d-md-block">
								<h5>Third slide label</h5>
								<p>Some representative placeholder content for the first
									slide.</p>
							</div>
						</div>
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExampleInterval" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleFade" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleFade" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
		<!-- 캐러셀(슬라이드) 끝-->

		<!-- 배너 -->
		<div class="p-3 mb-2 bg-primary text-white " style="height: 80px;"></div>




		<!-- 상품 목록 -->
		<div class="row row-cols-2 row-cols-md-5 g-4">
			<div class="col">
				<div class="card">
					<img src="images/noimages.gif">
					<div class="card-body">
						<h5 class="card-title">
							<a
								href="${pageContext.request.contextPath}/movieinfo.do?code=${movie.code}">${movie.title}</a>
						</h5>
						<p class="card-text">${movie.price}원</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 상품 목록 끝-->



</body>
</html>