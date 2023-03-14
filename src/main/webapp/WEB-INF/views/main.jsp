<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ include file="./includes/header.jsp"%>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal.sm.id" var="user_id" />
</sec:authorize>


<!-- SIDE BAR -->
<div class="d-flex flex-column flex-shrink-0 p-3 text-bg-dark"
	style="width: 280px; float: left">
	<a href="/"
		class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">

	<svg class="bi pe-none me-2" width="40" height="32">
    </svg> <span class="fs-4">차종 선택</span>

	</a>
	<hr />
	<form id='searchForm' action="/metaCar/main" method='get'>
		<ul class="nav nav-pills flex-column mb-auto">
			<li>

				<div class="input-group mb-3">
					<div class="input-group-text">
						<input class="form-check-input mt-0" type="checkbox"
							aria-label="Checkbox for following text input" id="carSmall"
							name="carSmall" value="경차" />
					</div>
					<div class="form-control text-black">경차</div>
				</div>



				<div class="input-group mb-3">
					<div class="input-group-text">
						<input class="form-check-input mt-0" type="checkbox"
							aria-label="Checkbox for following text input" id="carMiddle"
							name="carMiddle" value="중형" />
					</div>
					<div class="form-control text-black">중형</div>
				</div>


				<div class="input-group mb-3">
					<div class="input-group-text">
						<input class="form-check-input mt-0" type="checkbox"
							aria-label="Checkbox for following text input" id="carBig"
							name="carBig" value="대형" />
					</div>
					<div class="form-control text-black">대형</div>
				</div>

				<div class="input-group mb-3">
					<div class="input-group-text">
						<input class="form-check-input mt-0" type="checkbox"
							aria-label="Checkbox for following text input" id="carSUV"
							name="carSUV" value="suv" />
					</div>
					<div class="form-control text-black">SUV</div>
				</div>
			</li>
			<li>
				<div class="input-group mb-3">
					<div class="input-group-prepend">
						<label class="input-group-text" for="inputGroupSelect01">장소</label>
					</div>
					<select class="form-control text-black" id="zoneType" name="zoneType">
						<option selected value="0">쏘카존을 선택하세요</option>
						<option value="1">수서역</option>
						<option value="2">학동역</option>
						<option value="3">경찰병원역</option>
						<option value="4">가락시장역</option>
					</select>
				</div>
			</li>
			<li>
				<div class="input-group mb-3">
					<div class="input-group-prepend">
						<button type="submit" class="btn btn-primary">검색</button>
					</div>
					<input type='text' name='keyword' placeholder="검색어를 입력하세요">
				</div>
			</li>
		</ul>
		<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
		<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
		
	</form>
	<hr />
</div>


<div class="album py-5 bg-light"
	style="float: left; padding-left: 20px;">
	<!-- ALBUM -->
	<div class="container">

		<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3" style="width:1300px; height: 650px;">


			<c:forEach items="${list}" var="car">
				<div class="col">
					<div class="card shadow-sm">
						<title>Placeholder</title> <img
							src="/resources/img/${car.carModel}.jpg"
							style="width: 100%; height: 225px;" alt="${car.carModel }" />
						<div class="card-body">
							<c:out value="${car.carModel }" />
							<p class="card-text"></p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">

									<button 
										class="btn btn-sm btn-outline-secondary"
										onclick="window.open('detailcar?carNum=${car.carNum }','차량상세정보','width=620px,height=800px,location=no,status=no,scrollbars=yes');">
										상세정보</button>
									<button type="button" class="btn btn-outline-primary"
										onclick="location.href='/metaCar/rental?carNum=${car.carNum}'">대여하기</button>


								</div>
								<small class="text-muted">${car.reserveNow }</small>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>

		</div>
	</div>
	<br>
	<div class='pull-right' style="text-align: center;">
		<ul style="text-align: center;" class="pagination">

						<c:if test="${pageMaker.prev }">
							<li style="display :inline-block; text-decoration-line: none;" class="paginate_button previous">
							  <a href="${pageMaker.startPage -1 }">Previous</a>
							</li>
						</c:if>


			<c:forEach var="num" begin="${pageMaker.startPage }"
				end="${pageMaker.endPage }">
				<li style="display: inline-block;"
					class="paginate_button ${pageMaker.cri.pageNum == num ? "active":"" } ">
					<a style="margin-left: 4px" class="btn btn-outline-primary"
					href="${num }">${num }</a>
				</li>
			</c:forEach>

						<c:if test="${pageMaker.next }">
							<li style="display :inline-block; text-decoration-line: none;" class="paginate_button next">
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
    				<input name="id" type="hidden" name="id" value="${user_id }"/>
    				<input name="useTime" type="hidden"/>
    				<input name="returnAdd" type="hidden"/>
    				<input name="carNum" type="hidden"/>
    				<input name="sczoneNum" type="hidden"/>
    				<input type="hidden" name="${_csrf.parameterName}"
   					 value="${_csrf.token}" />
				</form>	

	<!--  end Pagination -->



<form id='actionForm' action="/metaCar/main" method='get'>
	<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum }'>
	<input type='hidden' name='amount' value='${pageMaker.cri.amount }'>
	<input type='hidden' name='zoneType'
		value='<c:out value="${ pageMaker.cri.zoneType }"/>'> <input
		type='hidden' name='keyword'
		value='<c:out value="${ pageMaker.cri.keyword }"/>'> <input
		type='hidden' name='carBig'
		value='<c:out value="${ pageMaker.cri.carBig }"/>'> <input
		type='hidden' name='carMiddle'
		value='<c:out value="${ pageMaker.cri.carMiddle }"/>'> <input
		type='hidden' name='carSmall'
		value='<c:out value="${ pageMaker.cri.carSmall }"/>'> <input
		type='hidden' name='carSUV'
		value='<c:out value="${ pageMaker.cri.carSUV }"/>'>
</form>

<form id="sideForm" action="/metaCar/main" method="post">
	<input name="id" type="hidden" /> <input name="useTime" type="hidden" />
	<input name="returnAdd" type="hidden" /> <input name="carNum"
		type="hidden" /> <input name="sczoneNum" type="hidden" /> <input
		type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>


<div class="d-flex flex-column flex-shrink-0 p-3 text-bg-dark"
	style="width: 280px; float: right">
	<a href="/"
		class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
		<!-- <svg class="bi pe-none me-2" width="40" height="32"> -->
      <use xlink:href="metaCar/main"></use>
    </svg> <span class="fs-4" style="text-align: center;">예약된 차 확인</span>
	</a>
	<hr />
		<c:choose>
			<c:when test="${empty user_id}">				
					<img
					src="/resources/img/unx.jpg"
					style="width: 100%; height: 225px;"/>
			</c:when>
			<c:when test="${!empty user_id}"> 
				<img
					src="/resources/img/unx.jpg"
					style="width: 100%; height: 225px;" id= "rentalImg"/>
			</c:when>
		</c:choose>


	<hr />
	<ul class="nav nav-pills flex-column mb-auto">
		<li><a class="nav-link text-white"> <svg
					class="bi pe-none me-2" width="16" height="16">
          <use xlink:href=""></use>
        </svg>
			<sec:authorize access="isAnonymous()">
				<!-- 로그인 안 한 익명일 경우 -->
				로그인 후 이용가능
			</sec:authorize>
			<sec:authorize access="isAuthenticated()">
				<!-- 로그인(인증된) 사용자인 경우 -->	

				<span id="textbox">대여한 차량이 없습니다.</span>
			</sec:authorize>
			<input type="hidden" name="rental_id" value=""/>
		</a>
		</li>

	</ul>

</div>

<script type="text/javascript">

$(document).ready(function(e) {
		
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
					
		var csrfHeaderName = "${_csrf.headerName}";
		var csrfTokenValue = "${_csrf.token}";
		var id = "${user_id }";
		console.log("user : ++++++++++" +id)
		$.ajax({
             type : 'post',
             url : '/metaCar/main',
             data : JSON.stringify(id),
             beforeSend : function(xhr){
             	xhr.setRequestHeader(csrfHeaderName,csrfTokenValue);		
             },
             contentType : "application/json; charset=utf-8",
       		 dataType : "json",
             success : function(result, status, xhr){
      				console.log(result);
      				console.log(result.carNum);
      				$('#rentalImg').attr("src", "/resources/img/" + result.haveCar.carModel + ".jpg");
             		$("input[name='rental_id']").val(result.carNum);   

             		if($('input[name="rental_id"]').val()!=""){
             			$('#textbox').text("대여한 차량이 있습니다");
             		}
             	                
             }
         });


		$(".paginate_button a").on("click", function(e) {
			e.preventDefault();
			console.log('click');
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		})
		
		function url_Initialize(){
			var url = document.location.href;
			if (url.indexOf("?") > -1) {
				var splits = url.split("?"); //split("구분자"):tokenizer와 다른점은 split는 공백도 하나의 값을 가진다.
				var gets = splits[1];
				var para = gets.split("&");
				var len = para.length;
				for (var i = 0; i < len; i++) {
					var param = para[i].split("=");
					var name = param[0];
					var value = param[1];
					if (name === "carSmall") {
						if (value === "%EA%B2%BD%EC%B0%A8") //경차
							$("input[name='carSmall']").attr("checked", true );
					}
					if (name === "carMiddle") {
						if (value === "%EC%A4%91%ED%98%95") //중형차
							$("input[name='carMiddle']").attr("checked", true );
					}
					if (name === "carBig") {
						if (value === "%EB%8C%80%ED%98%95") //중형차
							$("input[name='carBig']").attr("checked", true );
					}
					if (name === "carSUV") {
						if (value === "suv") //suv
							$("input[name='carSUV']").attr("checked", true );
					}
					if (name === "zoneType"){
						$('#zoneType option:eq(' + value + ')').attr("selected","selected");
					}
				}
			}
		}
		
		url_Initialize();
	});

</script>

<%@include file="./includes/footer.jsp"%>
