<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>위드동물병원</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap Icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
        <!-- SimpleLightbox plugin CSS-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/styles.css"/>
        <!-- jquery  -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script>
	let contextPath = "${contextPath}"
	$(function(){
		$('.logout').click(function(e){
			e.preventDefault(); 
			$(this).closest('form').submit();
		})
	})

</script>
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="${contextPath}">위드동물병원</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto my-2 my-lg-0">
                        <li class="nav-item"><a class="nav-link" href="${contextPath}/menu/info">병원소개</a></li>
                        <li class="nav-item"><a class="nav-link" href="${contextPath}/menu/res">진료예약</a></li>
                        <li class="nav-item"><a class="nav-link" href="#portfolio">예약확인</a></li>
                        <li class="nav-item"><a class="nav-link" href="${contextPath}/board/list">게시판</a></li>
                        <sec:authorize access="isAnonymous()">
	                        <li class="nav-item"><a class="nav-link" href="${contextPath}/menu/account/login">로그인</a></li>
	                        <li class="nav-item"><a class="nav-link" href="${contextPath}/menu/account/signUp">회원가입</a></li>
                        </sec:authorize>
                        <sec:authorize access="hasRole('ADMIN')">
		 					<li class="nav-item"><a class="nav-link" href="${contextPath}/security/admin">관리자페이지</a></li>
		 				</sec:authorize>
		 				<sec:authorize access="hasRole('MEMBER')">
		 					<li class="nav-item"><a class="nav-link" href="${contextPath}/security/member">마이페이지</a></li>
		 				</sec:authorize>
		 				<sec:authorize access="hasAnyRole('MEMBER','ADMIN')">
		 					<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token}">
		 					<li class="nav-item">
		 						<form action="${contextPath}/logout" method="post">
	 								<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token}">
	 								<a href="#" class="logout nav-link">로그아웃</a>
	 							</form>
		 					</li>
		 				</sec:authorize>
                    </ul>
                </div>
            </div>
        </nav>
        
