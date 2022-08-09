<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../layout/header.jsp"%>
<section class="page-section">
	<div class="container px-4 px-lg-5">
		<div class="row gx-4 gx-lg-5 justify-content-center">
			<div class="col-lg-8 col-xl-6 text-center">
				<h2 class="mt-0">로그인</h2>
				<hr class="divider" />
				<p class="text-muted mb-5">
					위드동물병원의 모든 서비스를 이용하시려면 로그인이 필요합니다.<br> 위드동물병원에 오신것을 환영합니다.
					고객만족을 위해 최선을 다하겠습니다.
				</p>
			</div>
		</div>
		<div class="row gx-4 gx-lg-5 justify-content-center mb-5">
			<div class="col-lg-6">
				<form class="form-signin" method="post" action="${contextPath}/menu/account/login">
					<div class="form-floating mb-3">
						<input type="text" name="userId" value=""
							placeholder="아이디" class="form-control" required autofocus>
						<label for="loginId">아이디</label>
					</div>

					<div class="form-floating mb-3">
						<input type="password" name="password" value=""
							placeholder="비밀번호" class="form-control" required> <label
							for="loginPw">비밀번호</label>
					</div>

					<div class="form-group">
						<input type="checkbox" name="remember-me" id="remember-me">
						<label for="remember-me">아이디 기억하기</label>
					</div>
					<div class="error_area">
						${errorMessage}
					</div>
					<hr class="my-4">
					<div class="form-group">
						<button class="btn btn-primary form-control" type="submit">로그인</button>
					</div>
					<hr class="my-4">
					<div class="text-center">
						<a class="small" href="${contextPath}/menu/account/signUp">계정이
							없으신가요? 회원가입하러 가기!</a>
					</div>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				</form>
			</div>
		</div>
	</div>
</section>
<%@ include file="../../layout/footer.jsp"%>