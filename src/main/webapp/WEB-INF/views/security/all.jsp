<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<section class="page-section">
<div class="container px-4 px-lg-5">
		<div class="row gx-4 gx-lg-5 justify-content-center">
			<div class="col-lg-8 col-xl-6 text-center">
				<h2 class="mt-0">회원페이지</h2>
				<hr class="divider" />
			</div>
		</div>
		<sec:authorize access="isAnonymous()">
			<a href="/login">로그인</a>
		</sec:authorize>
		<sec:authorize access="isAuthenticated()">
	 		<button class="btn btn-primary">로그아웃</button>
	 	</sec:authorize>
	</div>
</section>
<%@ include file="../layout/footer.jsp"%>