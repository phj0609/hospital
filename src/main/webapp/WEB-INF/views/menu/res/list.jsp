<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../layout/header.jsp" %>
<section class="page-section">
	<div class="container px-4 px-lg-5">
		<div class="row gx-4 gx-lg-5 justify-content-center">
			<div class="col-lg-8 col-xl-6 text-center">

				<h2 class="mt-0">초진 예약 확인</h2>
				<hr class="divider" />
			</div>
		</div>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>관리번호</th>
					<th>이름</th>
					<th>전화번호</th>
					<th>예약등록일</th>
				</tr>
			</thead>

			<c:forEach items="${list}" var="g">
				<tbody>
					<tr>
						<td>${g.id}</td>
						<td>${g.userName}</td>
						<td>${g.phoneNumber}</td>
						<td>
   							<fmt:parseDate var="regDate" value="${g.regDate}" pattern="yyyy-MM-dd'T'HH:mm:ss" type="both"></fmt:parseDate>
   							<fmt:formatDate value="${regDate}" pattern="yyyy년MM월dd일HH:mm:ss"/>
   						</td>
					</tr>
				</tbody>
			</c:forEach>
		</table>
	</div>
</section>
<%@ include file="../../layout/footer.jsp" %>