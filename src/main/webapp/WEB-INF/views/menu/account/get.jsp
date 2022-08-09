<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../layout/header.jsp" %>
<section class="page-section">
<div class="container">
	<form id="getForm">
		<input type="hidden" name="id" value="${member.id}">
		<input type="hidden" name="userId" value="${member.userId}">
		<input type="hidden" name="password" value="${member.password}">
		<input type="hidden" name="userName" value="${member.userName}">
		<input type="hidden" name="email" value="${member.email}">
		<input type="hidden" name="phoneNumber" value="${member.phoneNumber}">
		<div>
			<h2>회원정보</h2>
			<h3>${member.id}</h3>
			<p>회원아이디 : ${member.userId}</p>
			<p>회원이름 : ${member.userName}</p>
			<p>회원이메일 : ${member.email}</p>
			<p>회원전화번호 : ${member.phoneNumber}</p>
		</div>
		<button class="btn btn-warning modify">수정</button>
		<button class="btn btn-danger remove">삭제</button>
		<button class="btn btn-primary success">목록</button>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
	</form>
</div>
</section>
<script>
$(function(){
	let getForm = $('#getForm'); 
	
	$('#getForm .success').on('click', function(e) { 
		/* 수정 필요 */
		
		getForm.attr("action","success");
		getForm.attr("method", "get");
		getForm.submit();
	});
	
	$('#getForm .modify').on('click', function(e) { 
		getForm.append($('#id'))
		getForm.attr("action","modify");
		getForm.attr("method","get");
		getForm.submit();
	});
	
	$('#getForm .remove').on('click', function(e) { 
		getForm.append($('#id'))
		getForm.attr("action","remove");
		getForm.attr("method","post");
		getForm.submit();
	});

});
</script>
<%@ include file="../../layout/footer.jsp" %>