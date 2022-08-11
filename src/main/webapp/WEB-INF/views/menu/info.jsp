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
          <a class="nav-link active" href="#">진료안내</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${contextPath}/menu/vet">의료진 소개</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${contextPath}/menu/facility">병원 시설</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${contextPath}/menu/map">오시는 길</a>
        </li>
      </ul>
      <hr class="d-sm-none">
    </div>
    <div class="col-sm-8">
      <h2>반려동물의 건강과 행복을 위해<br> 언제나 최고의 진료를 약속드립니다.</h2>
      <hr class="divider" />
      <div class="text-center">
      <img alt="" src="${contextPath}/resources/img/icons(1).jpg">
      </div>
      <p>노령동물뿐만 아니라, 통증을 숨기고 질병이 심화되어 내원하는 동물환자의 특성상 한 분야의 수의사가 진단, 치료, 관리, 식이, 재활 등 모든 진료영역을 통제할 수 없습니다. 각 분야별 전문가들이 한 환자의 다양한 질병상태를 고려하여 진단, 치료, 관리 영역에 적극 개입하여 최적의 방향을 제시하고 있습니다.</p>
      <br>
      <h2 class="info">진료안내</h2>
      <hr class="divider" />
      <p>진료시간을 안내드립니다.</p>
       <table class="table table-bordered">
       	<thead>
       	<tr>
       		<th>   </th>
       		<th>진료시간</th>
       	</tr>
       	</thead>
       	<tbody>
       	<tr>
       		<td>오전 진료</td>
       		<td>오전 09시 30분 ~ 오후 1시 00분</td>
       	</tr>
       	<tr>
       		<td>점심 시간</td>
       		<td>오후 1시 00분 ~ 오후 2시 00분</td>
       	</tr>
       	<tr>
       		<td>오후 진료</td>
       		<td>오후 2시 00분 ~ 오후 8시 00분</td>
       	</tr>
       	<tr>
       		<td>저녁시간</td>
       		<td>오후 6시 00분 ~ 오후 7시 00분</td>
       	</tr>
       	<tr>
       		<td>야간진료(평일)</td>
       		<td>오후 8시 00분 ~ 오전 9시 00분</td>
       	</tr>
       	<tr>
       		<td>야간진료(주말)</td>
       		<td>오후 7시 00분 ~ 오전 9시 00분</td>
       	</tr>
       	</tbody>
       </table>
       	<p class="sat">
       		<b>※야간/응급 진료시 진료비가 할증됩니다.</b><br>
       		<b>※점심시간,저녁시간에는 진료가 없습니다.</b>
       	</p>
  </div>
</div>
</div>
</section>
<style>
	table { text-align: center; }
	.info { text-align: center; } 
	.sat { text-align: center; }
	h1, h2, p { text-align: center; }
</style>
<%@ include file="../layout/footer.jsp"%>