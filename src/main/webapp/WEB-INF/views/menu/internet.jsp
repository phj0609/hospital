<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<section class="page-section">
		<div class="row gx-4 gx-lg-5 justify-content-center">
			<div class="col-lg-8 col-xl-6 text-center">
				<h2 class="mt-0">진료 예약</h2>
				<hr class="divider" />
			</div>
		</div>
<div class="container" style="margin-top:30px">
  <div class="row">
    <div class="col-sm-4">
      <h3>진료예약</h3>
      <ul class="nav nav-pills flex-column">
        <li class="nav-item">
          <a class="nav-link" href="${contextPath}/menu/res">초진 간편예약</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="#">인터넷 예약</a>
        </li>
      </ul>
      <hr class="d-sm-none">
    </div>
    <div class="col-sm-8">
      <h2><strong>인터넷 예약</strong></h2>
      <sec:authentication property="principal.member" var="member"/>
			<h4>이름:${member.userName}</h4>
			<h4>연락처: ${member.phoneNumber}</h4>
			<h4>진료항목</h4>
			  <label><input type="checkbox" name="res" value="">일반진료</label>
      		  <label><input type="checkbox" name="res" value="">예방접종</label>
      		  <label><input type="checkbox" name="res" value="">건강검진</label>
      		  <label><input type="checkbox" name="res" value="">수술상담</label><br>
					<h4>예약날짜선택</h4>
					<h4>예약시간 선택</h4>
					<h4>예약 상세 내용 또는 남기고 싶은 말 (선택)</h4>
					<textarea rows="10" class="form-control" name="content"></textarea>
					<div class="d-grid">
						<button class="btn btn-primary btn-xl" id="submitButton"
							type="submit">예약하기</button>
					</div>			
			</div>
	</div>		
</div>
</div>
</div>
</section>

<%@ include file="../layout/footer.jsp"%>