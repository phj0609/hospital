<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<section class="page-section">
<div class="row gx-4 gx-lg-5 justify-content-center">
			<div class="col-lg-8 col-xl-6 text-center">
				<h1 class="mt-0">병원안내</h1>
				<hr class="divider" />
			</div>
		</div>
<div class="container" style="margin-top:30px">
  <div class="row">
    <div class="col-sm-4">
      <h3>병원소개</h3>
      <ul class="nav nav-pills flex-column">
        <li class="nav-item">
          <a class="nav-link" href="${contextPath}/menu/info">진료안내</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${contextPath}/menu/vet">의료진 소개</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="#">병원 시설</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${contextPath}/menu/map">오시는 길</a>
        </li>
      </ul>
      <hr class="d-sm-none">
    </div>
    <div class="col-sm-8">
      <h2>병원 시설</h2>
      <hr class="divider" />
      <p></p>
        </div>
  </div>
</div>
</section>
<%@ include file="../layout/footer.jsp"%>
<style>
	h2 { text-align: center; }
</style>