<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../layout/header.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<section class="page-section" id="signup">
	<div class="container px-4 px-lg-5">
		<div class="row gx-4 gx-lg-5 justify-content-center">
			<div class="col-lg-8 col-xl-6 text-center">
				<h2 class="mt-0">회원가입</h2>
				<hr class="divider" />
				<p class="text-muted mb-5">위드동물병원 홈페이지에 방문을 환영합니다.<br>
					위드동물병원 홈페이지의 회원가입을 통해 여러 서비스를 받으실 수 있습니다.</p>
			</div>
		</div>
		<div class="row gx-4 gx-lg-5 justify-content-center mb-5">
			<div class="col-lg-6">
				<form:form id="contactForm" method="post" modelAttribute="member">
					<!-- 아이디 -->
					<div class="d-flex justify-content-between">
					<span class="form-floating mb-3 col-lg-10">
						<input class="form-control" name="userId" type="text"
							placeholder="아이디를 입력하세요" value='<c:out value="${member.userId}"/>' readonly="readonly"/>
						<label for="name">아이디</label>
						<form:errors path="userId"/>
					</span>
					<span class="col-lg-" >
						<button type="button" class="id_ckeck">아이디<br>중복체크</button>
					</span>
					</div>
						
					<!-- 비밀번호 -->
					<div class="form-floating mb-3">
						<form:input class="form-control" path="password" type="password"
							placeholder="비밀번호를 입력하세요" />
						<label for="name">비밀번호</label>
						<form:errors path="password"/>
					</div>
					<!-- 비밀번호 확인 -->
					<div class="form-floating mb-3">
						<form:input class="form-control" path="confirmPassword" type="password"
							placeholder="비밀번호 재확인" />
						<label for="confirmPassword">비밀번호 재확인</label>
						<form:errors path="confirmPassword"/>
					</div>
					<!-- 이름 -->
					<div class="form-floating mb-3">
						<form:input class="form-control" path="userName" type="text" placeholder="이름을 입력하세요" />
						<label for="userName">이름</label>
						<form:errors path="userName"/>
					</div>
					<!-- 이메일 -->
					<div class="form-floating mb-3">
						<form:input class="form-control" path="email"  type="email"
							placeholder="이메일을 입력하세요" />
							<label for="email">이메일</label>
							<form:errors path="email"/>
					</div>
					<!-- 전화번호 -->
					<div class="form-floating mb-3">
						<form:input class="form-control" path="phoneNumber" type="tel" 
							placeholder="전화번호를 입력하세요" /> <label
							for="phone">전화번호</label>
							<form:errors path="phoneNumber"/>
					</div>					
					<!-- Submit Button-->
					<div class="d-grid">
						<button class="btn btn-primary btn-xl" id="submitButton"
							type="submit">가입하기</button>
					</div>
					
					<hr>
		   			<div class="text-center">
		        		<a class="small" href="${contextPath}/menu/account/login">이미 계정이 있으신가요? 로그인하러 가기!</a>
		    		</div>
		    		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				</form:form>
			</div>
			
		</div>
		<div class="row gx-4 gx-lg-5 justify-content-center">
			<div class="col-lg-4 text-center mb-5 mb-lg-0">
			<h6>문의사항은 아래의 연락처로 부탁드립니다.</h6>
				<i class="bi-phone fs-2 mb-3 text-muted"></i>
				<div>010 - 0000 - 0000</div>
			</div>
		</div>
	</div>
</section>

<div class="fade modal" id="select_id">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">아이디 중복 확인</h4>
          <button type="button" class="close" data-dismiss="modal">×</button>
        </div>
        <div class="modal-body">
        	<div class="form-group">
        		<input type="text" class="userId form-control">
        	</div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary findUserId">조회</button>
          <button type="button" class="btn btn-danger modalClose" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
</div>

<%@ include file="../../layout/footer.jsp"%>
<script>
console.log($('input[type="hidden"]').val())

$(function(){
	// 아이디 중복 조회 모달창 
	$('.id_ckeck').on('click',function(){
		$('#select_id').find('.userId').val('');
		$('#select_id').modal('show');
	});
	
	$('.modalClose').on('click',function(){
		$(this).closest('#select_id').modal('hide')
	})
	
	// 아이디 중복 조회 
	$('.findUserId').on('click',function(){
		let userId = $('#select_id').find('.userId').val();
		alert(userId);
		if(userId.trim()=='' || userId==null) {
			alert('아이디를 입력하세요')
			return; 
		}
		let url = contextPath + "/menu/account/" + userId;
		$.getJSON(url,function(result){
			if(result){ // 사용가능
				alert('사용가능한 아이디 입니다.')
				$('#contactForm').find('input[name="userId"]').val(userId);
				$('#select_id').modal('hide');
				
			} else { // 사용 불가능
				alert('아이디 중복입니다. 사용할 수 없습니다.')
			}			
		}).fail(function(){
			alert('통신에러')
		}); 
		
	})
})
</script>