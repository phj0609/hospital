<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<section class="page-section">
<div class="container">
   <div class="jumbotron">
      <h2>게시글 목록</h2>
   </div>
    <div>
   		<a href="register"><button class="btn btn-primary">글쓰기</button></a>
   </div>
   <table class="table">
   		<tr>
   			<th>번호</th>
   			<th>제목</th>
   			<th>작성자</th>
   			<th>등록일</th>
   			<th>수정일</th>
   		</tr>
   		<c:forEach var="b" items="${list}">
   			<tr>
   				<td>${b.bno}</td>
   				<td>
   					<a href="get?bno=${b.bno}">${b.title}</a>
   				</td>
   				<td>${b.writer}</td>
   				<td>
   					<fmt:parseDate var="regDate" value="${b.regDate}" pattern="yyyy-MM-dd'T'HH:mm:ss" type="both"></fmt:parseDate>
   			
   					<fmt:formatDate value="${regDate}" pattern="yyyy년MM월dd일HH:mm:ss"/>
   				</td>
   				<td>
   					<fmt:parseDate var="updateDate" value="${b.updateDate}" pattern="yyyy-MM-dd'T'HH:mm:ss" type="both"></fmt:parseDate>
   					<fmt:formatDate value="${updateDate}" pattern="yyyy년MM월dd일HH:mm:ss"/>
   				</td>
   			</tr>
   		</c:forEach>
   </table>
   
  <ul class="pagination my-3 py-3">
  	<c:if test="${pageMarker.prev}">
  <li class="page-item"><a class="page-link" href="#">Previous</a></li>
  </c:if>
  <li class="page-item"><a class="page-link" href="#">1</a></li>
  <li class="page-item active"><a class="page-link" href="#">2</a></li>
  <li class="page-item"><a class="page-link" href="#">3</a></li>
  <c:if test="${pageMarker.next}">
  <li class="page-item"><a class="page-link" href="${pageMarker.endPage+1}">Next</a></li>
  </c:if>
</ul>

</div>
</section>
<script>
	
</script>
<%@ include file="../layout/footer.jsp" %>
<style>
table {
	border-collapse: collapse;
	width: 100%;
}
th, td {
	text-align: left;
	padding: 8px;
}
tr:nth-child(even) {
	background-color: #f2f2f2;
}
</style> 