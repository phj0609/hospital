<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../layout/header.jsp" %>
<section class="page-section">
	<div class="container px-4 px-lg-5">
		<div class="row gx-4 gx-lg-5 justify-content-center">
			<div class="col-lg-8 col-xl-6 text-center">
				<h2 class="mt-0">초진 예약 확인</h2>
				<hr class="divider" />
			</div>
		</div>
	<div id="remove" class="remove">
    <form id="resForm">
		<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token}">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>관리번호</th>
					<th>이름</th>
					<th>전화번호</th>
					<th>예약등록일</th>
					<th>삭제여부</th>
				</tr>
			</thead>

			<c:forEach items="${list}" var="g">
				<tbody>
					<tr>
						<td>${g.id}</td>
						<td>${g.userName}</td>
						<td>${g.phoneNumber}</td>
						<td>
   							<fmt:parseDate var="regDate" value="${g.regDate}" pattern="yyyy-MM-dd'T'HH:mm:ss" type="both"></fmt:parseDate>
   							<fmt:formatDate value="${regDate}" pattern="yyyy년MM월dd일HH:mm:ss"/>
   						</td>
   						<td>
   							<button class="btn btn-danger delete" value="삭제" name="delete">삭제</button>
   							<input type="hidden" name="id" value="${g.id}" id="id">
   						</td>
					</tr>
				</tbody>
			</c:forEach>
		</table>
		</form>
		</div>
	</div>
</section>
<%@ include file="../../layout/footer.jsp" %>

<script>
// 삭제버튼 클릭시
 $('#resForm .delete').on('click', function(e) {
	e.preventDefault();
	
	if(deleteList() == true)
	{
		$('#resForm').append($('#id'));
		$('#resForm').attr('action','${contextPath}/menu/res/list');
		$('#resForm').attr('method','post');
		$('#resForm').submit();
	}
 })
 
function deleteList() {
 if (confirm("정말 삭제하시겠습니까??") == true){    //확인
     return true;
 }else{   //취소
     return false;

 }

}
</script>