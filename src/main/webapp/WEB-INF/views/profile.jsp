<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, 그리고 Bootstrap 기여자들">
    <meta name="generator" content="Hugo 0.104.2">
    <title>Pricing example · Bootstrap v5.2</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"> 
    <link rel="canonical" href="https://getbootstrap.kr/docs/5.2/examples/pricing/">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    
<link href="${pageContext.request.contextPath}/resources/css/profile.css" rel="stylesheet" type="text/css">
    

<!-- <link href="/docs/5.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"> -->

    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.2/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.2/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.2/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon.ico">

<!-- model  -->



<meta name="theme-color" content="#712cf9">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="pricing.css" rel="stylesheet">
  </head>
  <body>
    
<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
  <symbol id="check" viewBox="0 0 16 16">
    <title>Check</title>
    <path d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
  </symbol>
</svg>

<div class="container py-3">
  <header>
    <div class="d-flex flex-column flex-md-row align-items-center pb-3 mb-4 border-bottom">
      <a href="/" class="d-flex align-items-center text-dark text-decoration-none">
        <img src="/resources/img/Metacar.png" alt="" style= "float: left; width: 100px; height: 100px; object-fit: cover;"/>
        <span class="fs-4">마이 페이지</span>
      </a>
    </div>

    <div class="pricing-header p-3 pb-md-4 mx-auto text-center">
      <h1 class="display-4 fw-normal">내 정보</h1>
      
    </div>
  </header>

  <main>
    <div class="row row-cols-1 row-cols-md-3 mb-3 text-center">

      <div class="col">
        <div class="card mb-4 rounded-3 shadow-sm">
          <div class="card-header py-3">
            <h4 class="my-0 fw-normal">내 정보</h4>
          </div>
          <div class="card-body">
            <h1 class="card-title pricing-card-title"><c:out value="${user.name }"/></h1>
            <ul class="list-unstyled mt-3 mb-4">
              <li>ID : <c:out value="${user.id }"/></li>

              <li id="phoneNum">전화번호 : <c:out value="${user.phone }"/></li>
            </ul>
            <!--  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalSignin" id="modify">수정하기</button>
          	-->
				<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
				  수정하기
				</button>

		 </div>
        </div>
      </div>
      
    </div>

    <h2 class="display-6 text-center mb-4">예약 조회</h2>

    <div class="table-responsive">
      <table class="table text-center">
        <thead>
          <tr>
            
            <th style="width: 22%;">대여장소</th>
            <th style="width: 22%;">차 번호</th>
            <th style="width: 22%;">차종</th>
            <th style="width: 22%;">시간</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            
            <!--<td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td> -->
            <td><c:out value="${user.rentalCar.haveCar.zoneCar.address }"/></td>
            <td><c:out value="${user.rentalCar.haveCar.carNum }"/></td>
            <td><c:out value="${user.rentalCar.haveCar.carModel }"/></td>
            <td><c:out value="${user.rentalCar.useTime }"/></td>
          </tr>
        </tbody> 
      </table>
    </div>
    
	<!-- Button trigger modal -->

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <label>전화번호  <input id="modiphone" type="text"/></label>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-primary" id="modify">수정하기</button>
      </div>
    </div>
  </div>
</div>

<form action="/metaCar/modifyprofile" method="post" id="modifyForm" >
	<input type="hidden" name="id">
	<input type="hidden" name="phone">
	 <input type="hidden" name="${_csrf.parameterName}"
    value="${_csrf.token}" />
</form>
<input type='button' class="btn btn-primary" value='예약취소목록' style="float: right;" onclick="location.href='/metaCar/cancel/${user.id}'"/>
</main>
  
  <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/User.js"></script> 
	<!-- <script src="/resources/js/User.js"></script>  -->
<script>

$(function(){
	console.log("script");

	
			
		
	
	
	$('#modify').on('click', function(){
		console.log("modify");
		
		if($('#modiphone').val()==""){
			alert("전화번호를 입력해주세요");
			return;
		}
		
		var phone = $('#modiphone').val();
		console.log(phone);
		
		//$('input[name="phone"]').val(phone);
		
		//var id = "<c:out value='${user.id }'/>";
		
		//$('input[name="id"]').val(id);
		
		//$('#modifyForm').submit();
		
		var data = {
				id : "<c:out value='${user.id }'/>",
				phone : phone
		}
		
		console.log(data);
		
		var csrfHeaderName = "${_csrf.headerName}";
		var csrfTokenValue = "${_csrf.token}";
		
		userModifyService.modify(data, csrfHeaderName, csrfTokenValue, function(result){
			$('#phoneNum').text("전화번호 : " + result);
			
			$('#exampleModal').modal('hide'); 
		    $('#exampleModal').hide();
		});
		
		
		
		
		
	})
	
	
})

</script>
  <%@include file="./includes/footer.jsp"%>
