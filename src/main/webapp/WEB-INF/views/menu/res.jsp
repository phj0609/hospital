<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<section class="page-section">
		<div class="row gx-4 gx-lg-5 justify-content-center">
			<div class="col-lg-8 col-xl-6 text-center">
				<h2 class="mt-0">진료 예약</h2>
				<hr class="divider" />
			</div>
		</div>
<div class="container" style="margin-top:30px">
  <div class="row">
    <div class="col-sm-4">
      <h3>진료예약</h3>
      <ul class="nav nav-pills flex-column">
        <li class="nav-item">
          <a class="nav-link active" href="#">초진 간편예약</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${contextPath}/menu/internet">인터넷 예약</a>
        </li>
      </ul>
      <hr class="d-sm-none">
    </div>
    <div class="col-sm-8">
      <h2 style="text-align: center;"><strong>초진 간편예약</strong></h2>
      	<hr class="divider" />
		<mark>회원 로그인 없이 진료예약 신청이 가능합니다.</mark>
		<div class="subbox border">
			<ul>
				<li>초진 간편예약은 이름과 연락처만 입력 신청하면 상담사가 고객님의 휴대폰으로 전화하여 진료예약 하는 서비스입니다.</li>
				<li>초진 간편예약 신청만 하시고 상담사와 상담이 이루어지지 않는 경우, 예약이 되지 않아 진료를 볼 수 없습니다. 신청 후 전화예약 상담전화(000-0000-0000)를 꼭 받아주시기 바랍니다.</li>
				<li>당일 진료 예약은 불가합니다.</li>
				<li>개인정보에 동의하시고 예약자 이름과 연락처를 입력 후 예약신청 버튼 누르시면 상담사가 친절하게 초진 간편 예약을 도와드립니다.</li>
				<li>상담시간 : 평일 08:30~17:30, 토요일 08:30~12:30 (일요일 및 법정공휴일은 제외)</li>
			</ul>
		</div>
		<h3>개인정보 수집, 이용에 대한 동의 절차</h3>
		<textarea name="textarea" rows="10" class="form-control" readonly="readonly">
		1.개인정보의 수집 이용 목적
			인터넷 진료 초진 간편 예약 신청 확인 및 회신 
		2.수집하는 필수 개인정보의 항목 
			이름, 연락처
		3.개인정보의 보유 이용 기간
			상담전화 전까지 개인정보 보관 후 개인정보는 지체없이 파기함.
			이 제공하는 서비스를 받으시는 동안 안전하게 보유되고, 이용목적에 부합하는 경우에만 이용하게 됨.
		4.개인정보 수집, 이용에 대한 동의가 없으면 서비스를 이용할 수 없습니다.
		</textarea>
		<label class="radio-lnline">
			<input name="agree" type="radio" data-agree="agree" checked="checked">동의함
		</label>
		<label class="radio-lnline">
			<input name="agree" type="radio" data-agree="disagree">동의하지 않음
		</label>
		<div class="row gx-4 gx-lg-5 justify-content-center mb-5">
			<div class="col-lg-6">
			<form:form id="contactForm" method="post" modelAttribute="guest">
					<div class="form-floating mb-3">
						<form:input class="form-control" path="userName" type="text" placeholder="이름을 입력하세요" />
						<label for="userName">이름</label>
						<form:errors path="userName"/>
					</div>
					<div class="form-floating mb-3">
						<form:input class="form-control" path="phoneNumber" type="tel" 
							placeholder="전화번호를 입력하세요" /> <label
							for="phone">전화번호</label>
							<form:errors path="phoneNumber"/>
					</div>	
					<hr class="my-4">
					<div class="form-group">
						<button class="btn btn-primary btn-xl" >예약하기</button>
					</div>
			</form:form>
    		</div>
  		</div>
	</div>		
</div>
</div>
</section>


<div class="fade modal" id="confirm_res">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">초진 간편예약</h4>
          <button type="button" class="close" data-dismiss="modal">×</button>
        </div>
        <div class="modal-body">
        	<div class="form-group">
        		다음과 같이 입력 하셨습니다.
        	</div>
        	<div class="form-group">
        		이름 : <span class="inputName"></span> 
        	</div>
        	<div class="form-group">
        		전화번호 : <span class="inputPhoneNumber"></span> 
        	</div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary resBtn">예약</button>
          <button type="button" class="btn btn-danger closeBtn" data-dismiss="modal">취소</button>
        </div>
      </div>
    </div>
</div>

<%@ include file="../layout/footer.jsp"%>

<style>
	mark {
		font-weight: bold;
		background-color:orange;
	
	} 
</style>
<script>
$(function(){

	let agreeValue = 'agree';
	$('input[name="agree"]').change(function(){
		agreeValue=$(this).data('agree');
	})
	
	$("#contactForm button").on('click',function(e){
		e.preventDefault();

		if(agreeValue!='agree'){
			alert('동의하지 않으면 예약할 수 없습니다.');
			return; 
		}
		// 입력한 값 가져오기 
		$('.inputName').text($('#userName').val());
		$('.inputPhoneNumber').text($('#phoneNumber').val());
		// 모달창 열기 
		$('#confirm_res').modal('show');
		$('#confirm_res').find('.closeBtn').on('click',function(){
			$('#confirm_res').modal('hide'); // 취소
		});
		$('#confirm_res').find('.resBtn').on('click',function(){
			// 예약
			$('#confirm_res').modal('hide'); // 모달 닫고 
			$('#contactForm').submit() // 전송 
		});
	});
	

});
</script>