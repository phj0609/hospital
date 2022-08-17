<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<section class="page-section">
	<div class="container px-4 px-lg-5">
		<div class="row gx-4 gx-lg-5 justify-content-center">
			<div class="col-lg-8 col-xl-6 text-center">
				<h2 class="mt-0">마이페이지</h2>
				<hr class="divider" />
			</div>
		</div>
		<sec:authentication property="principal.member" var="member" />
		<br>
		<h2>아이디 : ${member.userId}</h2>
		<h2>이름 : ${member.userName}</h2>
		<h2>이메일 : ${member.email}</h2>
		<h2>전화번호 : ${member.phoneNumber}</h2>
		<a class="btn btn-secondary btn-xl" href="${contextPath}/menu/check">예약확인</a>
		<form action="${contextPath}/logout" method="post">
			<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token}">
			<button class="btn btn-danger btn-xl">로그아웃</button>
		</form>
	</div>
</section>
<%@ include file="../layout/footer.jsp"%>