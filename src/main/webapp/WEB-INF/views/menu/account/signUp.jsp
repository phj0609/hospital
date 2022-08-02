<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../layout/header.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<section class="page-section" id="signup">
	<div class="container px-4 px-lg-5">
		<div class="row gx-4 gx-lg-5 justify-content-center">
			<div class="col-lg-8 col-xl-6 text-center">
				<h2 class="mt-0">회원가입</h2>
				<hr class="divider" />
				<p class="text-muted mb-5">위드동물병원 홈페이지에 방문을 환영합니다.<br>
					위드동물병원 홈페이지의 회원가입을 통해 여러 서비스를 받으실 수 있습니다.</p>
			</div>
		</div>
		<div class="row gx-4 gx-lg-5 justify-content-center mb-5">
			<div class="col-lg-6">
				<form:form id="contactForm" method="post" modelAttribute="member">
					<!-- <input type="hidden" name="_csrf" value="{_csrf.token}"> -->
					<!-- 아이디 -->
					<div class="form-floating mb-3">
						<form:input class="form-control" path="userId"  type="text"
							placeholder="아이디를 입력하세요"/>
						<label for="name">아이디</label>
						<form:errors path="userId"/>
					</div>
					<!-- 비밀번호 -->
					<div class="form-floating mb-3">
						<form:input class="form-control" path="password" type="password"
							placeholder="비밀번호를 입력하세요" />
						<label for="name">비밀번호</label>
						<form:errors path="password"/>
					</div>
					<!-- 비밀번호 확인 -->
					<div class="form-floating mb-3">
						<form:input class="form-control" path="confirmPassword" type="password"
							placeholder="비밀번호 재확인" />
						<label for="confirmPassword">비밀번호 재확인</label>
						<form:errors path="confirmPassword"/>
					</div>
					<!-- 이름 -->
					<div class="form-floating mb-3">
						<form:input class="form-control" path="userName" type="text" placeholder="이름을 입력하세요"/>
						<label for="userName">이름</label>
						<form:errors path="userName"/>
					</div>
					<!-- 이메일 -->
					<div class="form-floating mb-3">
						<form:input class="form-control" path="email"  type="email"
							placeholder="이메일을 입력하세요" />
							<label for="email">이메일</label>
							<form:errors path="email"/>
					</div>
					<!-- 전화번호 -->
					<div class="form-floating mb-3">
						<form:input class="form-control" path="phoneNumber" type="tel" 
							placeholder="전화번호를 입력하세요" /> <label
							for="phone">전화번호</label>
							<form:errors path="phoneNumber"/>
					</div>					
					<!-- Submit Button-->
					<div class="d-grid">
						<button class="btn btn-primary btn-xl" id="submitButton"
							type="submit">가입하기</button>
					</div>
					
					<hr>
		   			<div class="text-center">
		        		<a class="small" href="${contextPath}/menu/account/login">이미 계정이 있으신가요? 로그인하러 가기!</a>
		    		</div>
				</form:form>
			</div>
		</div>
		<div class="row gx-4 gx-lg-5 justify-content-center">
			<div class="col-lg-4 text-center mb-5 mb-lg-0">
			<h6>문의사항은 아래의 연락처로 부탁드립니다.</h6>
				<i class="bi-phone fs-2 mb-3 text-muted"></i>
				<div>010 - 0000 - 0000</div>
			</div>
		</div>
	</div>
</section>

<%@ include file="../../layout/footer.jsp"%>