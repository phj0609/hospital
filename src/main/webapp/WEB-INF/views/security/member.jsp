<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<section class="page-section">
<div class="container px-4 px-lg-5">
		<div class="row gx-4 gx-lg-5 justify-content-center">
			<div class="col-lg-8 col-xl-6 text-center">
				<h2 class="mt-0">멤버페이지</h2>
				<hr class="divider" />
			</div>
		</div>
		<p>principal : <sec:authentication property="principal"/><br></p>
		<p>member : <sec:authentication property="principal.member" var="member"/><br></p>
		멤버 아이디 : ${member.userId}<br>
		멤버 이름 : ${member.userName}<br>
		멤버 권한 : 
		<c:forEach items="${member.authList}" var="authList">
			${authList.auth}
		</c:forEach>
		<br>
	 <form action="${contextPath}/logout" method="post">
	 	<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token}">
	 	<button class="btn btn-primary">로그아웃</button>
	 </form>
	</div>
</section>
<%@ include file="../layout/footer.jsp" %>