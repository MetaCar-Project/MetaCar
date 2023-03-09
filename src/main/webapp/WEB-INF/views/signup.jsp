<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<!-- <script src="//code.jquery.com/jquery-1.11.1.min.js"></script> -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="${pageContext.request.contextPath}/resources/css/signup.css"
	rel="stylesheet" type="text/css">

</head>
<body>
	<div class="container" id="wrap">
		<div class="row">
			<div class="col-md-7 col-md-offset-3">
				<form action="r" method="post" accept-charset="utf-8" class="form"
					role="form">
					<legend>회원 가입</legend>


					<input type="text" name="name" value=""
						class="form-control input-lg" placeholder="이름" /> 
					<br>
					
					<input type="text" name="id" value="" 
					class="form-control input-lg" placeholder="아이디" />
					<br>
					<input type="password" name="password" value="" 
						class="form-control input-lg" placeholder="비밀번호" />
					<br>
					<input type="password" name="confirm_password" value=""
						class="form-control input-lg" placeholder="비밀번호 확인" />
					<br>
					<input type="password" name="regNum" value=""
						class="form-control input-lg" placeholder="주민등록번호" />
					<br>
				   
					<br /> <span class="help-block">내 계정 만들기를 클릭하면 약관에 동의하고 쿠키
						사용을 포함한 데이터 사용 정책을 읽었음을 의미합니다.</span>
					<button class="btn btn-lg btn-primary btn-block signup-btn"
						type="submit">계정 생성</button>
				</form>
			</div>
		</div>
	</div>
	</div>
</body>
</html>