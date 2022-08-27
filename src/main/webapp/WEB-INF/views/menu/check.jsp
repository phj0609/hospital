<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<section class="page-section">
<div class="container px-4 px-lg-5">
<div class="row gx-4 gx-lg-5 justify-content-center">
			<div class="col-lg-8 col-xl-6 text-center">
				<h1 class="mt-0">예약확인</h1>
				<hr class="divider" />
			</div>
		</div>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>예약순번</th>
					<th>이름</th>
					<th>전화번호</th>
					<th>진료내용</th>
					<th>예약날짜</th>
					<th>예약시간</th>
					<th>내용</th>
				</tr>
			</thead>
			<c:forEach items="${list}" var="i">
				<tbody>
					<tr>
						<td>${i.resId}</td>
						<td>${i.userName}</td>
						<td>${i.phoneNumber}</td>
						<td>${i.resType}</td>
						<td>${i.resDate}</td>
						<td>${i.resTime}</td>
						<td>${i.resContent}</td>
					</tr>
				</tbody>
			</c:forEach>
		</table>
	</div>
</section>

<%@ include file="../layout/footer.jsp"%>