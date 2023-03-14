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
				<form action="/metaCar/addaccount" method="post" accept-charset="utf-8" class="form"
					role="form" id="addForm">
					<legend>회원 가입</legend>


					<input type="text" name="name" value=""
						class="form-control input-lg" placeholder="이름" /> 
					<div id="namenull" hidden="hidden" style="color : red">이름을 입력해주세요.</div>
					<br>
					
					<input type="text" name="id" value="" 
					class="form-control input-lg" placeholder="아이디" />
		
					<button class="btn btn-lg btn-primary btn-block signup-btn" type="button" id="checkbutton" >확인</button>
					<div id="canpost" hidden="hidden" data-validation='false'></div>
					<div id="valid" hidden="hidden" style="color : red">이미 존재하는 아이디입니다.</div>
					<div id="valid2" hidden="hidden" style="color : red">아이디를 입력해주세요</div>
					<div id="valid3" hidden="hidden" style="color : green">가입 가능한 아이디입니다</div>
					<br>
					<br>
					<input type="password" name="password" value="" 
						class="form-control input-lg" placeholder="비밀번호" />
					<br>
					<input type="password" name="confirm_password" value=""
						class="form-control input-lg" placeholder="비밀번호 확인" onkeyup="passConfirm()"/>
					
					<br>
					
					<span id = "confirmMsg"></span>
					
					<br>
					<input type="text" id="name" name="phone" value=""
						class="form-control input-lg" placeholder="전화번호(xxx-xxxx-xxxx)" />
					
					<div id="phonenull" hidden="hidden" style="color : red">전화번호를 입력해주세요.</div>
					<input type="text" id="regnum" name="regNum" value=""
						class="form-control input-lg" placeholder="주민등록번호" />
					
				    <div id="regnull" hidden="hidden" style="color : red">주민등록번호를 입력해주세요.</div>
					<br /> <span class="help-block">내 계정 만들기를 클릭하면 약관에 동의하고 쿠키
						사용을 포함한 데이터 사용 정책을 읽었음을 의미합니다.</span>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					<button id="add" class="btn btn-lg btn-primary btn-block signup-btn"
						type="submit">계정 생성</button>
				</form>
			</div>
		</div>
	</div>
	</div>
</body>

 <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
 <script>
 	$(function(){
 		$('#checkbutton').on("click", function(){
 			console.log('checkbutton click');
 			
 			var csrfHeaderName = "${_csrf.headerName}";
 			var csrfTokenValue = "${_csrf.token}";
 			var data = $('input[name="id"]').val();
 			if (data==""){
 				$('#valid2').show();
 				return;
 			}
 			console.log(data);
 			
 			$.ajax({
                type : 'post',
                url : '/metaCar/checkid',
                beforeSend : function(xhr){
                	xhr.setRequestHeader(csrfHeaderName,csrfTokenValue);		
                },
                data : JSON.stringify(data),
                contentType : "application/json; charset=utf-8",
                success : function(result, status, xhr){
                    //console.log(result);
                    if(result=='success'){
                    	$('#valid2').hide();
                    	$('#valid').show();
                    }
                    else if(result == 'fail'){
                    	//console.log("failfailfail");
                    	$('#valid2').hide();
                    	$('#valid').hide();
                    	$('#valid3').show();
                    	$('#canpost').data("validation", "true");
                    	console.log($('#canpost').data("validation"));
                    	
                    }
                }
            });	
 		})
 		
 		
 		$('#add').on('click',function(e){
 			e.preventDefault();
 			
 			if($('input[name="name"]').val()==""){
 				console.log("주번입력안함");
 				$('#namenull').show();
 				return;
 			}
 			
 			//비밀번호
 			var regex = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;
 			//이메일
 			var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
 			//전화번호
 			var regPhone = /^\d{3}-\d{3,4}-\d{4}$/;
 			
 			var check = $('#canpost').data("validation");
 			console.log(check);
 			if(check == false){
 				$('#namenull').hide();
 				alert("아이디 중복확인을 해주세요");
 				return;
 			}
 			
 			
 			/* if(!regExp.test($('input[name="id"]').val())){
 				console.log("이메일 형식다름");
 				return;
 			} */
 			
 			var password = $('input[name="password"]').val();
 			var passcheck = $('input[name="confirm_password"]').val();
 			if(password != passcheck){
 				alert("비밀번호가 다릅니다.");
 				return;
 			}
 			
 			if(password == ""){
 				alert("비밀번호를 입력해주세요");
 				return;
 			}
 			
 			if($('#name').val()==""){
 				console.log("폰번호입력안함");
 				$('#namenull').hide();
 				$('#phonenull').show();
 				return;
 			}
 			if($('#regnum').val()==""){
 				console.log("주번입력안함");
 				$('#namenull').hide();
 				$('#phonenull').hide();
 				$('#regnull').show();
 				return;
 			}
 			
 			$('#addForm').submit();
 			
 		})
 		
 	})
 </script>

</html>