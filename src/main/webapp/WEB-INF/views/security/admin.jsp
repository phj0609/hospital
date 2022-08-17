<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<section class="page-section">
	<div class="container px-4 px-lg-5">
		<div class="row gx-4 gx-lg-5 justify-content-center">
			<div class="col-lg-8 col-xl-6 text-center">
				<h2 class="mt-0">관리자페이지</h2>
				<hr class="divider" />
			</div>
		</div>
		<sec:authentication property="principal.member" var="member" />
		<h2><strong>관리자 정보</strong></h2>
		<h3>관리자 아이디 : ${member.userId}</h3>
		<h3>관리자 이름 : ${member.userName}</h3>
		<div style="margin-bottom: 10px;">
			<a class="btn btn-secondary btn-xl" href="${contextPath}/menu/res/list">초진예약자 리스트</a>
			<a class="btn btn-success btn-xl" href="${contextPath}/menu/account/list">회원관리</a>
			<a class="btn btn-warning btn-xl" href="${contextPath}/menu/check">예약관리</a>
		</div>
		<form action="${contextPath}/logout" method="post">
			<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token}"> 
				<button class="btn btn-danger btn-xl">로그아웃</button>
		</form>
	</div>
</section>
<%@ include file="../layout/footer.jsp"%>
