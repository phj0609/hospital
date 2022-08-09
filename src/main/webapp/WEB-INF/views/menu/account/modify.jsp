<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../layout/header.jsp" %>
<section class="page-section">
<div class="container">
<h2>수정 페이지</h2>
<form action="modify" method="post">
	<input type="hidden" name="id" value="${member.id}">
	아이디 : <input type="text" name="userId" value="${member.userId}" readonly="readonly"> <br>
	이름 : <input type="text" name="userName" value="${member.userName}" readonly="readonly"> <br>	
	이메일 : <input type="text" name="email" value="${member.email}"><br>
	전화번호 : <input type="text" name="phoneNumber" value="${member.phoneNumber}"><br>
	<button class="btn btn-primary">수정하기</button>
</form>
</div>
</section>
<%@ include file="../../layout/footer.jsp" %>