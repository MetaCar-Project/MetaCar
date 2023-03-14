<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<%@ include file="./includes/header.jsp"%>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<sec:authorize access="isAuthenticated()">
          <sec:authentication property="principal.sm.id"  var="user_id"/>           	
</sec:authorize>  


<!-- SIDE BAR -->
<div class="d-flex flex-column flex-shrink-0 p-3 text-bg-dark"
	style="width: 280px; float: left">
	<a href="/"
		class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
		<svg class="bi pe-none me-2" width="40" height="32">
      <use xlink:href="#bootstrap"></use>
    </svg> <span class="fs-4">Sidebar3</span>
	</a>
	<hr />
	<ul class="nav nav-pills flex-column mb-auto">
		<li>
			<div class="text-white fs-4" id="carselect" name="carselect">차종 선택</div> <input type="checkbox"
			style="float: left" />
			<div style="height: 100%; width: 100%">
				<p class="nav-link text-white" id="smallcar">경차</p>
			</div> <input type="checkbox" style="float: left" />
			<div style="height: 100%; width: 100%">
				<p class="nav-link text-white" id="midddlecar">중형</p>
			</div> <input type="checkbox" style="float: left" />
			<div style="height: 100%; width: 100%">
				<p class="nav-link text-white" id="bigcar">대형</p>
			</div> <input type="checkbox" style="float: left" />
			<div style="height: 100%; width: 100%">
				<p class="nav-link text-white" id="suv">SUV</p>
			</div>
		</li>
		<li>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<label class="input-group-text" for="inputGroupSelect01">쏘카존</label>
				</div>
				<select class="custom-select" id="inputGroupSelect01">
					<option selected>쏘카존을 선택하세요</option>
					<option value="station1">수서역</option>
					<option value="station2">학동역</option>
					<option value="station3">경찰병원역</option>
					<option value="station4">가락시장역</option>
				</select>
			</div>
		</li>
		<li>
			<form id='searchForm' action="/metaCar/main" method='get'>
				<input class="form-control mr-sm-2" type="search"
					placeholder="차량이름 검색" aria-label="search" />
				<button class="btn btn-outline-success my-2 my-sm-0 text-bg-white"
					id="search"type="submit" style="background-color: white">검색</button>
			</form>			
		</li>
	</ul>
	<hr />
</div>


<div class="album py-5 bg-light"
	style="float: left; padding-left: 20px;">
	<!-- ALBUM -->
	<div class="container">
		<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">

			<c:forEach items="${list}" var="car">
				<div class="col">
					<div class="card shadow-sm">
						<title>Placeholder</title> <img
							src="/resources/img/${car.carModel }.jpg"
							style="width: 100%; height: 225px;" alt="${car.carModel }" />
						<div class="card-body">
							<c:out value="${car.carModel }" />
							<p class="card-text"></p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
								
									<button onclick="window.open('detailcar?carNum=${car.carNum }','차량상세정보','width=600,height=600,location=no,status=no,scrollbars=yes');">
									상세정보</button>
									<button type="button" class="btn btn-sm btn-outline-secondary" onclick="location.href='/metaCar/rental?carNum=${car.carNum}'">대여하기</button>

								</div>
								<small class="text-muted">대여가능여부</small>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
			
		</div>
	</div>
	
				<div class='pull-right'>
					<ul class="pagination">

						<c:if test="${pageMaker.prev }">
							<li class="paginate_button previous">
							  <a href="${pageMaker.startPage -1 }">Previous</a>
							</li>
						</c:if>

						<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
							<li class="paginate_button ${pageMaker.cri.pageNum == num ? "active":"" } ">
								<a href="${num }">${num }</a>
							</li>
						</c:forEach>

						<c:if test="${pageMaker.next }">
							<li class="paginate_button next">
								<a href="${pageMaker.endPage +1 }">Next</a>
							</li>
						</c:if>

					</ul>
				</div>			
		</div>
			
				<form id='actionForm' action="/metaCar/main" method='get'>
					<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum }'>
					<input type='hidden' name='amount' value='${pageMaker.cri.amount }'>
				</form>
				
				<form id="sideForm" action="/metaCar/main" method="post">
    				<input name="id" type="hidden"/>
    				<input name="useTime" type="hidden"/>
    				<input name="returnAdd" type="hidden"/>
    				<input name="carNum" type="hidden"/>
    				<input name="sczoneNum" type="hidden"/>
    				<input type="hidden" name="${_csrf.parameterName}"
   					 value="${_csrf.token}" />
				</form>	

<div class="d-flex flex-column flex-shrink-0 p-3 text-bg-dark"
	style="width: 280px; float: right">
	<a href="/"
		class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
		<svg class="bi pe-none me-2" width="40" height="32">
      <use xlink:href="metaCar/main"></use>
    </svg> <span class="fs-4">예약된 차 확인</span>
    ${user_id }
    ${rental.id }
	</a>
	<hr />
		<c:choose>
			<c:when test="${(empty rental_car.id)  or (empty user_id)}">				
					<img
					src="/resources/img/unx.jpg"
					style="width: 100%; height: 225px;"/>
			</c:when>
			<c:when test="${rental_car.id eq user_id}"> 
				<img
					src="/resources/img/${car.carModel }.jpg"
					style="width: 100%; height: 225px;"/>
			</c:when>
		</c:choose>
	<hr />
	<ul class="nav nav-pills flex-column mb-auto">
		<li><a class="nav-link text-white"> <svg
					class="bi pe-none me-2" width="16" height="16">
          <use xlink:href=""></use>
        </svg>
        	<c:choose>
        		<c:when test="${(empty user_id) or (user_id == 'null')}">       
						로그인 후 사용 가능
				</c:when>
				<c:when test="${(empty rental_car.id) or (rental_member.id == 'null')}">       
						대여한 차량이 없습니다
				</c:when>
				<c:when test="${rental_car.id eq user_id}">
					<sec:authorize access="isAuthenticated()">
					<a href="carPay" style="text-decoration-line: none; text-align: center;">이용하기</a>
					</sec:authorize>
				</c:when>
			</c:choose>		
		</a>
		</li>
	</ul>
</div>

<script type="text/javascript">


$(document).ready(function() {
		
			history.replaceState({}, null, null);

			var actionForm = $("#actionForm");

			$(".paginate_button a").on(
					"click",
					function(e) {

						e.preventDefault();

						console.log('click');

						actionForm.find("input[name='pageNum']").val($(this).attr("href"));
						actionForm.submit();
					})
		});


$(function(){

		e.preventDefault();

		var id = "<sec:authentication property="principal.sm.id"/>";
		console.log("id : " +id);
	
		var csrfHeaderName = "${_csrf.headerName}";
		var csrfTokenValue = "${_csrf.token}";
	
		$.ajax({
        	type : 'post',
         	url : '/metaCar/main,
         	data : JSON.stringify(id),
         	beforeSend : function(xhr){
         	xhr.setRequestHeader(csrfHeaderName,csrfTokenValue);		
         },
         contentType : "application/json; charset=utf-8",
         success : function(result, status, xhr){
        	 console.log("result  : " + result);
        	 
        	 if(result=='dontreantalid'){
            	$('input[name="id"]').val("<sec:authentication property="principal.sm.id"/>");
            	
            	var rental_car.id = "<c:out value='${rental_car.id}'/>";
            	$('input[name="id"]').val(id);
        	 }
        	 
             if(result=='havereserve'){
            	$('input[name="id"]').val("<sec:authentication property="principal.sm.id"/>");
            	
            	var rental_car.id = "<c:out value='${rental_car.id}'/>";
            	$('input[name="id"]').val(id);
         		
             }
         }
     });


</script>

<%@include file="./includes/footer.jsp"%>
