<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp"%>
<!-- Masthead-->
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
<!-- About-->
<section class="page-section bg-primary" id="about">
	<div class="container px-4 px-lg-5">
		<div class="row gx-4 gx-lg-5 justify-content-center">
			<div class="col-lg-8 text-center">
				<h2 class="text-white mt-0">We've got what you need!</h2>
				<hr class="divider divider-light" />
				<p class="text-white-75 mb-4">Start Bootstrap has everything you
					need to get your new website up and running in no time! Choose one
					of our open source, free to download, and easy to use themes! No
					strings attached!</p>
				<a class="btn btn-light btn-xl" href="#services">Get Started!</a>
			</div>
		</div>
	</div>
</section>
<!-- Services-->
<section class="page-section" id="services">
	<div class="container px-4 px-lg-5">
		<h2 class="text-center mt-0">Service</h2>
		<hr class="divider" />
		<div class="row gx-4 gx-lg-5">
			<div class="col-lg-3 col-md-6 text-center">
				<div class="mt-5">
					<div class="mb-2">
						<i class="bi-gem fs-1 text-primary"></i>
					</div>
					<h3 class="h4 mb-2">튼튼한 아이를 위해</h3>
					<p class="text-muted mb-0">Our themes are updated regularly to
						keep them bug free!</p>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 text-center">
				<div class="mt-5">
					<div class="mb-2">
						<i class="bi-laptop fs-1 text-primary"></i>
					</div>
					<h3 class="h4 mb-2">편리한 진료예약</h3>
					<p class="text-muted mb-0">온라인으로 보다 편리하게 예약 서비스를 이용할 수 있습니다</p>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 text-center">
				<div class="mt-5">
					<div class="mb-2">
						<i class="bi-globe fs-1 text-primary"></i>
					</div>
					<h3 class="h4 mb-2">Ready to Publish</h3>
					<p class="text-muted mb-0">You can use this design as is, or
						you can make changes!</p>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 text-center">
				<div class="mt-5">
					<div class="mb-2">
						<i class="bi-heart fs-1 text-primary"></i>
					</div>
					<h3 class="h4 mb-2">Made with Love</h3>
					<p class="text-muted mb-0">Is it really open source if it's not
						made with love?</p>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Call to action-->
<section class="page-section bg-dark text-white">
	<div class="container px-4 px-lg-5 text-center">
		<h2 class="mb-4">우리는 반려동물들이 행복한 삶을 살 수 있도록 최선을 다합니다.</h2>
		<a class="btn btn-light btn-xl"
			href="${contextPath}/menu/info">진료안내</a>
	</div>
</section>
<a href="#" class="go-to-top" style="top : 901px">top</a>
<%@ include file="layout/footer.jsp"%>