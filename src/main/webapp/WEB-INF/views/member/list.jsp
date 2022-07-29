<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<div class="jumbotron">
	<h2>회원목록</h2>
</div>
<div class="container">
	<a href="register" class="btn btn-primary">회원가입</a>
	<table class="table">
		<tr>
			<th>회원번호</th>
			<th>회원이름</th>
			<th>이메일</th>
		</tr>
		<c:forEach items="${list}" var="m">
		<tr>
			<td>${m.id}</td>
			<td>
			<a href="${contextPath}/member/get?id=${m.id}">${m.userName}</a>
			</td>
			<td>${m.email}</td>
		</tr>
		</c:forEach>
	</table>
</div>
<%@ include file="../layout/footer.jsp" %>