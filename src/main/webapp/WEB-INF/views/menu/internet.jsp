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
	
	</div>		
</div>
</div>
</section>

<%@ include file="../layout/footer.jsp"%>