<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<script src="${contextPath}/resources/js/get.js"></script>
<input type="hidden" name="bno" value="${board.bno}" id="bno">
<input type="hidden" name="page" value="${param.page}" id="page">
<input type="hidden" name="type" value="${param.type}" id="type">
<input type="hidden" name="keyword" value="${param.keyword}" id="keyword">
<%-- 
<input type="hidden" name="title" value="${board.title}">
<input type="hidden" name="content" value="${board.content}">
<input type="hidden" name="regDate" value="${board.regDate}">
<input type="hidden" name="updateDate" value="${board.updateDate}">
--%>
<section class="page-section">
<div class="container">
   <div class="jumbotron">
      <h2>게시글 목록</h2>
   </div>
   <form id="getForm">
	   <div class="card">
	   		<div class="card-header">
	   			<div class="row">
	   				<div class="col-sm-1">${board.bno}</div>
		   			<div class="col-sm-11">${board.title}</div>
	   			</div>
	   		</div>
	   		<div class="card-body">
	   			${board.content}
	   		</div>
			<div class="card-footer d-flex justify-content-between">
				<div>		   		
			   		<button class="btn btn-warning modify">수정</button>
			   		<button class="btn btn-danger remove">삭제</button>
			   		<button class="btn btn-success list">목록</button>
		   		</div>
		   		<div>
					등록일 : <fmt:parseDate var="regDate" value="${board.regDate}" pattern="yyyy-MM-dd'T'HH:mm:ss" type="both"></fmt:parseDate>
					<fmt:formatDate value="${regDate}" pattern="yyyy년MM월dd일HH:mm:ss"/>
					수정일 : <fmt:parseDate var="updateDate" value="${board.updateDate}" pattern="yyyy-MM-dd'T'HH:mm:ss" type="both"></fmt:parseDate>
					<fmt:formatDate value="${updateDate}" pattern="yyyy년MM월dd일HH:mm:ss"/>
   				</div>
	   		</div>
	   </div> 
   </form>
     
	<div class="row">
		<div class="col-sm-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="test">댓글</h4>
				</div>
				<div class="panel-body">
					<ul class="chat">
					
					</ul>
				</div>
			</div> 
		</div> 
	</div> 
  
  <!-- 댓글 등록하기 -->
	<!-- Button trigger modal -->
	<button id="addReplyBtn" type="button" class="btn btn-primary" data-toggle="modal"
		data-target="#replyForm">댓글등록하기</button>

	<!-- 모달 -->
	<div class="modal fade" id="replyForm" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">댓글</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label class="replyer">작성자</label>
						 	<input class="form-control" name="replyer" id="replyer" placeholder="작성자를 입력하세요">
					</div>
					<div class="form-group">
						<label class="reply">내용</label>
						 	<textarea class="form-control" name="reply" id="reply" placeholder="내용을 남겨보세요"></textarea>
					</div>
					<div class="form-group">
						<label class="regDate">등록일</label>
						 	<input class="form-control" name="regDate" id="regDate">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-warning" id="modalModBtn">수정</button>
					<button type="button" class="btn btn-danger" id="modalRemoveBtn">삭제</button>
					<button type="button" class="btn btn-primary" id="modalRegisterBtn">등록</button>
					<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>
			
</div>
</section>

<script>
	$(function(){
		let getForm = $('#getForm'); 
		
		$('#getForm .list').on('click', function(e) { 
			/* 수정 필요 */
			
			getForm.attr("action","list");
			getForm.attr("method", "get");
			getForm.submit();
		});
		
		$('#getForm .modify').on('click', function(e) { 
			getForm.append($('#bno'))
			getForm.attr("action","modify");
			getForm.attr("method","get");
			getForm.submit();
		});
		
		$('#getForm .remove').on('click', function(e) { 
			getForm.append($('#bno'))
			getForm.attr("action","remove");
			getForm.attr("method","post");
			getForm.submit();
		});
		
		// 댓글 등록 테스트
		 $(function(){
			let bnoValue = $('input[name="bno"]').val();
			let reply = {
				bno : bnoValue,
				
				reply : "ajax 댓글 등록 테스트",
				replyer : "테스터"
			};
			let callback = function(result) {
				alert("결과 : " + result);
			}
			replyService.add(reply,callback);
		}) 
	
}); 
	
</script>
<%@ include file="../layout/footer.jsp" %> 