<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, 그리고 Bootstrap 기여자들">
    <meta name="generator" content="Hugo 0.104.2">
    <title>예약 취소</title>
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
        <span class="fs-4">예약취소</span>
      </a>
    </div>
        <h4 class="display-6 text-center mb-4">삭제 가능한 예약 목록</h4>
          <table class="table text-center">
        <thead>
          <tr>
            <th style="width: 20%;">아이디</th>
            <th style="width: 20%;">대여신청시간</th>
            <th style="width: 20%;">사용시간</th>
            <th style="width: 20%;">반납주소</th>
            <th style="width: 20%;">차번호</th>
          </tr>
        </thead>


        <tbody>
        
          	<tr>
          
			</tr>
				
			<tr>
				<td><c:out value="${rentalGet.id}"/></td>
				<td><fmt:formatDate pattern="yyyy-MM-dd" value="${rentalGet.reserveTime}"/></td>
				<td><c:out value="${rentalGet.useTime}"/></td>
				<td><c:out value="${rentalGet.returnAdd}"/></td>
				<td><c:out value="${rentalGet.carNum}"/></td>
				
			</tr>
			
        </tbody>
       
      </table>

</div>
 <main style="width: 100%; height: 100%;">
  <div style="width: 1000px; height: 800%; margin: 0 auto;">
    <div class="row row-cols-1 row-cols-md-3 mb-3 text-center">
      <div class="col">
        <div class="card mb-4 rounded-3 shadow-sm">
          
          <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
				  <div>
           			 <h5 class="my-0 fw-normal">예약을 취소 하시겠습니까?</h5>
        		  </div>
			</button>
          <!-- <button type="button" class="btn btn-primary" onclick="cancelRes()">
          <div>
            <h5 class="my-0 fw-normal">예약을 취소 하시겠습니까?</h5>
          </div>
          </button> -->
 
        </div>
      </div>
  </header>   
    </div>

    <h4 class="display-6 text-center mb-4">예약 취소 목록</h4>
      <table class="table text-center">
        <thead>
          <tr>
            <th style="width: 34%;">예약번호</th>
            <th style="width: 22%;">취소이유</th>
            <th style="width: 22%;">취소 날짜</th>
          </tr>
        </thead>
	<c:forEach var="cancelCar" items="${cancel}">

        <tbody>
        
          <tr>
          
            <td style="text-align: center">${cancelCar.reserveNum}</td>
		    <td style="text-align: center">${cancelCar.cancelWhy}</td>
		    <td><fmt:formatDate pattern="yyyy-MM-dd" value="${cancelCar.cancelDate}"/></td>
		    
          </tr>
        </tbody>
        
        </c:forEach> 
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
        <label>취소사유  <input id="cancelwhy" type="text" value=""/></label>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-primary" id="modify">취소하기</button>
      </div>
    </div>
  </div>
</div>

</main>
  
  <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	<!-- <script src="${pageContext.request.contextPath}/resources/js/User.js"></script>  -->
	<!-- <script src="/resources/js/User.js"></script>  -->
<script>
	$(function(){
		
		$('#modify').on('click', function () {
			console.log("zmfflrzmfflrzmfflr");
			  var csrfHeaderName = "${_csrf.headerName}";
			  var csrfTokenValue = "${_csrf.token}";
			  var id = "<sec:authentication property="principal.sm.id"/>";
			  var cancelWhy = $('#cancelwhy').val(); 
			  var cc = {
					  id : id,
					  cancelWhy : cancelWhy
			  }
			  console.log(cc);
			  $.ajax({
			    url: "/metaCar/cancel",
			    type: "POST",
			    beforeSend : function(xhr){
	             	xhr.setRequestHeader(csrfHeaderName,csrfTokenValue);		
	             },
			    data: JSON.stringify(cc),
			    contentType: "application/json",
			    success: function(response) {
			    	if(response=='success'){
						$('#exampleModal').modal('hide'); 
					    $('#exampleModal').hide();
					    window.location.replace("/metaCar/cancel/" + id);
			    	}
			    }
			  })
			})
	})
	
	
	
	
	
	
	
	
	</script>

  <%@include file="./includes/footer.jsp"%>
