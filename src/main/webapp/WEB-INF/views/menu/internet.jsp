<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<section class="page-section">
	<div class="row gx-4 gx-lg-5 justify-content-center">
		<div class="col-lg-8 col-xl-6 text-center">
			<h2 class="mt-0">진료 예약</h2>
			<hr class="divider" />
		</div>
	</div>
	<div class="container" style="margin-top: 30px">
		<div class="row">
			<div class="col-sm-4">
				<h3>진료예약</h3>
				<ul class="nav nav-pills flex-column">
					<li class="nav-item"><a class="nav-link"
						href="${contextPath}/menu/res">초진 간편예약</a></li>
					<li class="nav-item"><a class="nav-link active" href="#">인터넷
							예약</a></li>
				</ul>
				<hr class="d-sm-none">
			</div>
			<div class="col-sm-8">
				<h2 style="text-align: center;">
					<strong>인터넷 예약</strong>
				</h2>
				<hr class="divider" />
				<sec:authentication property="principal.member" var="member" />
				<form class="form-res" method="post" >
				<h4>이름 : <input type="text" name="userName" readonly="readonly" value="${member.userName}"></h4>
				<h4>연락처 : <input type="text" name="phoneNumber" readonly="readonly" value="${member.phoneNumber}"></h4>
				<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token}">
					<h2><strong>진료항목</strong></h2>
					<select id="res_type" name="resType">
						<option value="항목선택" selected>진료항목을 선택하세요</option>
						<option value="일반진료">일반진료</option>
						<option value="예방접종">예방접종</option>
						<option value="건강검진">건강검진</option>
						<option value="수술상담">수술상담</option>
					</select>
					<h2><strong>예약 날짜</strong></h2>
	      				<input type="date" name="resDate" min="2022-08-01" max="2022-09-30">
	      				<span class="validity"></span>
					<h2><strong>예약 시간</strong></h2>
	     				<input type="time" name="resTime" min="09:00" max="18:00">  
						<span class="validity"></span>
					<h2><strong>남기고 싶은 말(선택)</strong></h2>
					<textarea rows="10" class="form-control" name="resContent"></textarea>
					<hr class="my-4">
					<div class="d-grid">
						<button class="btn btn-primary btn-xl" id="submitButton"
							type="submit">예약하기</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>

<%@ include file="../layout/footer.jsp"%>
<style>

input[type="number"] {
  width: 100px;
}

input + span {
  padding-right: 30px;
}

input:invalid+span:after {
  position: absolute;
  content: 'X';
  padding-left: 5px;
}

input:valid+span:after {
  position: absolute;
  content: '✓';
  padding-left: 5px;
}

</style>

<script>

</script>