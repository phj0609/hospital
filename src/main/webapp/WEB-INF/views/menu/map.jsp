<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<script src="${contextPath}/resources/js/gm.js"></script>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/map.css"/>
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
          <a class="nav-link" href="${contextPath}/menu/facility">병원 시설</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="${contextPath}/menu/map">오시는 길</a>
        </li>
      </ul>
      <hr class="d-sm-none">
    </div>
    <div class="col-sm-8">
      <h2>오시는 길</h2>
      <hr class="divider" />
      <p>위드동물병원 오시는 길을 안내해드립니다.</p>
    <div class="main_content">
        <div id="map" style="width:100%;height:500px;"></div>
		<button onclick="panTo()">지도 위드동물병원으로 이동</button> 
		<br><br>
		<h4><b>지하철</b></h4>
			<ul>
				<li><strong style="color:#f4623a">1호선</strong> : 중앙로역 하차 3번출구</li>
			</ul>	
			<br>
		<h4><b>버스</b></h4>
			<ul>
				<li><strong style="color:#f4623a">한일극장 앞, 노보텔 앞 하차</strong></li>
				<span>
					급행1, 급행3, 106, 156, 309, 323, 323-1, 400, 410, 410-1, 425, 427, 508, 521, 600, 724, 909, 939, 980, 가창2,동구1, 동구1-1, 북구3
				</span>
				<li><strong style="color:#f4623a">중앙시네마 앞 아카데미시네마 앞 하차</strong></li>
				<span>
					급행2, 106, 202, 202-1, 349, 410, 503, 518, 650, 704, 706, 730, 909
				</span>
				<li><strong style="color:#f4623a">대구역 앞 하차</strong></li>
				<span>
					101, 101-1, 202, 202-1, 349, 401, 414, 420, 420-1, 618, 623, 651, 704, 708, 808, 980, 북구2
				</span>
			</ul>
		
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7c6845431c43b5add855db6f68a9a697"></script>
<script src="${contextPath}/resources/js/km.js"></script>


    </div>
  </div>
</div>
</div>
</section>
<style>
	
</style>



<%@ include file="../layout/footer.jsp"%>