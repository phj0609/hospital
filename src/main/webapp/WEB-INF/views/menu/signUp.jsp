<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
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
				<form id="contactForm" data-sb-form-api-token="API_TOKEN">
					<!-- id input-->
					<div class="form-floating mb-3">
						<input class="form-control" id="name" type="text"
							placeholder="Enter your name..." data-sb-validations="required" />
						<label for="name">아이디</label>
						<div class="invalid-feedback" data-sb-feedback="name:required">A
							name is required.</div>
					</div>
					<!-- password input-->
					<div class="form-floating mb-3">
						<input class="form-control" id="name" type="text"
							placeholder="Enter your name..." data-sb-validations="required" />
						<label for="name">비밀번호</label>
						<div class="invalid-feedback" data-sb-feedback="name:required">A
							name is required.</div>
					</div>
					<!-- password check input-->
					<div class="form-floating mb-3">
						<input class="form-control" id="name" type="text"
							placeholder="Enter your name..." data-sb-validations="required" />
						<label for="name">비밀번호 재확인</label>
						<div class="invalid-feedback" data-sb-feedback="name:required">A
							name is required.</div>
					</div>
					<!-- name input-->
					<div class="form-floating mb-3">
						<input class="form-control" id="name" type="text"
							placeholder="Enter your name..." data-sb-validations="required" />
						<label for="name">이름</label>
						<div class="invalid-feedback" data-sb-feedback="name:required">A
							name is required.</div>
					</div>
					<!-- Email address input-->
					<div class="form-floating mb-3">
						<input class="form-control" id="email" type="email"
							placeholder="name@example.com"
							data-sb-validations="required,email" /> <label for="email">이메일</label>
						<div class="invalid-feedback" data-sb-feedback="email:required">An
							email is required.</div>
						<div class="invalid-feedback" data-sb-feedback="email:email">Email
							is not valid.</div>
					</div>
					<!-- Phone number input-->
					<div class="form-floating mb-3">
						<input class="form-control" id="phone" type="tel"
							placeholder="(123) 456-7890" data-sb-validations="required" /> <label
							for="phone">전화번호</label>
						<div class="invalid-feedback" data-sb-feedback="phone:required">A
							phone number is required.</div>
					</div>
					
					<!-- Submit success message-->
					<!---->
					<!-- This is what your users will see when the form-->
					<!-- has successfully submitted-->
					<div class="d-none" id="submitSuccessMessage">
						<div class="text-center mb-3">
							<div class="fw-bolder">Form submission successful!</div>
							To activate this form, sign up at <br /> <a
								href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
						</div>
					</div>
					<!-- Submit error message-->
					<!---->
					<!-- This is what your users will see when there is-->
					<!-- an error submitting the form-->
					<div class="d-none" id="submitErrorMessage">
						<div class="text-center text-danger mb-3">Error sending
							message!</div>
					</div>
					<!-- Submit Button-->
					<div class="d-grid">
						<button class="btn btn-primary btn-xl disabled" id="submitButton"
							type="submit">가입하기</button>
					</div>
				</form>
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

<%@ include file="../layout/footer.jsp"%>