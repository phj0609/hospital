<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../layout/header.jsp"%>
<section class="page-section">
	<div class="container">
	<div class="row">
      <div class="col-sm-5 col-md-9 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
			<h1 class="card-title text-center">로그인</h1>
				<p class="text-center">위드동물병원의 모든 서비스를 이용하시려면 로그인이 필요합니다.<br>
				위드동물병원에 오신것을 환영합니다. 고객만족을 위해 최선을 다하겠습니다.</p>
		</div>
            <form class="form-signin" method="post" action="login">
              <div class="form-label-group">
                <input type="text" id="id" name="id" class="form-control" placeholder="id" required autofocus>
              </div><br>

              <div class="form-label-group">
                <input type="password" id="pwd" name="pwd" class="form-control" placeholder="Password" required>
              </div>
              
              <hr>
              
              <div class="form-label-group">
              <c:if test="${check == 1 }">
                <label>${message}</label>
              </c:if>
              </div>

              <button class="btn btn-primary center" type="submit">로그인</button>
              <hr class="my-4">
              Forgot your <a href="#" onclick="findid()">ID</a> or 
              				<a href="#" onclick="findpassword()">Password</a>?
              <button class="btn btn-secondary">회원가입</button>
            </form>
          </div>
        </div>
      </div>
    </div>
</section>
<%@ include file="../../layout/footer.jsp"%>