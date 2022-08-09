<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../layout/header.jsp" %>
<section class="page-section">
	<div class="container px-4 px-lg-5">
		<div class="row gx-4 gx-lg-5 justify-content-center">
			<div class="col-lg-8 col-xl-6 text-center">

				<h2 class="mt-0">회원관리</h2>
				<hr class="divider" />
			</div>
		</div>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>관리번호</th>
					<th>아이디</th>
					<th>이름</th>
					<th>이메일</th>
					<th>전화번호</th>
				</tr>
			</thead>

			<c:forEach items="${list}" var="m">
				<tbody>
					<tr>
						<td>${m.id}</td>
						<td>${m.userId}</td>
						<td><a href="get?id=${m.id}">${m.userName}</a></td>
						<td>${m.email }</td>
						<td>${m.phoneNumber}</td>
					</tr>
				</tbody>
			</c:forEach>
		</table>
	</div>
</section>
<%@ include file="../../layout/footer.jsp" %>