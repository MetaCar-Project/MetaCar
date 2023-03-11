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

<script type="text/javascript">
	/* 자바 스크립트 함수 선언(비밀번호 확인) */

	function passConfirm() {
	/* 비밀번호, 비밀번호 확인 입력창에 입력된 값을 비교해서 같다면 비밀번호 일치, 그렇지 않으면 불일치 라는 텍스트 출력.*/
	/* document : 현재 문서를 의미함. 작성되고 있는 문서를 뜻함. */
	/* getElementByID('아이디') : 아이디에 적힌 값을 가진 id의 value를 get을 해서 password 변수 넣기 */
		var password = document.getElementById('password');					//비밀번호 
		var passwordConfirm = document.getElementById('confirm_password');	//비밀번호 확인 값
		var confrimMsg = document.getElementById('confirmMsg');				//확인 메세지
		var correctColor = "#00ff00";	//맞았을 때 출력되는 색깔.
		var wrongColor ="#ff0000";	//틀렸을 때 출력되는 색깔
		
		if(password.value == passwordConfirm.value){//password 변수의 값과 passwordConfirm 변수의 값과 동일하다.
			confirmMsg.style.color = correctColor;/* span 태그의 ID(confirmMsg) 사용  */
			confirmMsg.innerHTML ="비밀번호 일치";/* innerHTML : HTML 내부에 추가적인 내용을 넣을 때 사용하는 것. */
		}else{
			confirmMsg.style.color = wrongColor;
			confirmMsg.innerHTML ="비밀번호 불일치";
		}
	}
</script>

</head>
<body>
	<div class="container" id="wrap">
		<div class="row">
			<div class="col-md-7 col-md-offset-3">
				<form action="/metaCar/addacount" method="post" accept-charset="utf-8" class="form"
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
						class="form-control input-lg" placeholder="비밀번호 확인" onkeyup="passConfirm()"/>
					
					<br>
					
					<span id = "confirmMsg"></span>
					
					<br>
					<input type="text" name="phone" value=""
						class="form-control input-lg" placeholder="전화번호" />
					<br>
					<input type="text" name="regNum" value=""
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