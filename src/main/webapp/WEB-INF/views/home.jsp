<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp"%>
<header class="masthead">
	<div class="container px-4 px-lg-5 h-100">
		<div
			class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">
			<div class="col-lg-8 align-self-end">
				<h1 class="text-white font-weight-bold">반려동물도 우리가족,<br>가족을 위해 항상<br>최선을 다하겠습니다</h1>
				<hr class="divider" />
			</div>
			<div class="col-lg-8 align-self-baseline">
				<p class="text-white-75 mb-5">반려동물 삶의 질 향상을 위하는 마음으로 최고의 외과 수술을 추구하고 있습니다</p>
				<a class="btn btn-primary btn-xl" href="${contextPath}/menu/info">자세히보기</a>
			</div>
		</div>
	</div>
</header>
<section class="page-section" id="services">
	<div class="container px-4 px-lg-5">
		<h2 class="text-center mt-0">약속</h2>
		<hr class="divider" />
		<div class="row gx-4 gx-lg-5">
			<div class="col-lg-3 col-md-6 text-center">
				<div class="mt-5">
					<div class="mb-2">
						<i class="bi-gem fs-1 text-primary"></i>
					</div>
					<h3 class="h4 mb-2">탄탄한 의료진</h3>
					<p class="text-muted mb-0">최고의 의료진들과 함께합니다</p>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 text-center">
				<div class="mt-5">
					<div class="mb-2">
						<i class="bi-laptop fs-1 text-primary"></i>
					</div>
					<h3 class="h4 mb-2">편리한 진료예약</h3>
					<p class="text-muted mb-0">온라인으로 보다 편리하게<br> 예약 서비스를 이용할 수 있습니다</p>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 text-center">
				<div class="mt-5">
					<div class="mb-2">
						<i class="bi-globe fs-1 text-primary"></i>
					</div>
					<h3 class="h4 mb-2">국내 최고를 위해</h3>
					<p class="text-muted mb-0">지역 최고를 나아가 전국 최고의<br> 병원이 되도록 노력하겠습니다</p>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 text-center">
				<div class="mt-5">
					<div class="mb-2">
						<i class="bi-heart fs-1 text-primary"></i>
					</div>
					<h3 class="h4 mb-2">보호자의 마음</h3>
					<p class="text-muted mb-0">항상 보호자의 마음으로<br> 함께 하겠습니다</p>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="page-section bg-dark text-white">
	<div class="container px-4 px-lg-5 text-center">
		<h2 class="mb-4">우리는 반려동물들이<br>행복한 삶을 살 수 있도록<br> 최선을 다합니다.</h2>
		<a class="btn btn-light btn-xl"
			href="${contextPath}/menu/info">병원안내</a>
	</div>
</section>
<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
<%@ include file="layout/footer.jsp"%>

<style>
#myBtn {
	display: none;
	position: fixed;
	bottom: 20px;
	right: 30px;
	z-index: 99;
	font-size: 18px;
	border: none;
	border-radius: 50%;
	outline: none;
	background-color: #28A0FF;
	color: white;
	cursor: pointer;
	padding: 15px;
}

#myBtn:hover {
	background-color: #0078FF;
}
</style>
<script>

	var mybutton = document.getElementById("myBtn");

	// 위에서 부터 20 아래로 스크롤할때 나타남
	window.onscroll = function() {
		scrollFunction()
	};

	function scrollFunction() {
		if (document.body.scrollTop > 20
				|| document.documentElement.scrollTop > 20) {
			mybutton.style.display = "block";
		} else {
			mybutton.style.display = "none";
		}
	}

	// 버튼을 누르면 맨위로 스크롤
	function topFunction() {
		document.body.scrollTop = 0;
		document.documentElement.scrollTop = 0;
	}
</script>