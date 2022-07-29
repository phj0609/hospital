<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<div class="container">
	<form id="getForm">
		<input type="hidden" name="id" value="${member.id}">
		<input type="hidden" name="userName" value="${member.userName}">
		<input type="hidden" name="email" value="${member.email}">
		<input type="hidden" name="password" value="${member.password}">
		<div>
			<h3>${member.id}</h3>
			<p>회원이름 : ${member.userName}</p>
			<p>회원이메일 : ${member.email}</p>
		</div>
		<button class="btn btn-warning modify">수정</button>
		<button class="btn btn-danger remove">삭제</button>
		<button class="btn btn-primary">목록</button>
	</form>
</div>
<%@ include file="../layout/footer.jsp" %>