<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../layout/header.jsp" %>
<section class="page-section">
<div class="container">
	<table class="table table-hover">
		<h3>회원관리</h3>
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
					<td>
						<a href="get?id=${m.id}">${m.userName}</a>
					</td>
					<td>${m.email }</td>
					<td>${m.phoneNumber}</td>
				</tr>
			</tbody>
		</c:forEach>
	</table>
</div>
</section>
<%@ include file="../../layout/footer.jsp" %>