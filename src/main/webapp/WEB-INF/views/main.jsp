<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="./includes/header.jsp"%>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>

function detailcar(){
	window.open("detailcar?carnum=","차량상세정보","width=600,height=700");
	return;
}


</script>

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
							src="/resources/img/${car.carModel}.jpg"
							style="width: 100%; height: 225px;" alt="${car.carModel}" />
						<div class="card-body">
							<c:out value="${car.carModel}" />
							<p class="card-text"></p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button" class="btn btn-sm btn-outline-secondary"
									onclick="detailcar();">상세보기</button>
									<button type="button" class="btn btn-sm btn-outline-secondary">대여하기</button>
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

						<c:if test="${pageMaker.prev}">
							<li class="paginate_button previous">
							  <a href="${pageMaker.startPage -1}">Previous</a>
							</li>
						</c:if>

						<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
							<li class="paginate_button ${pageMaker.cri.pageNum == num ? "active":""} ">
								<a href="${num}">${num}</a>
							</li>
						</c:forEach>

						<c:if test="${pageMaker.next}">
							<li class="paginate_button next">
								<a href="${pageMaker.endPage +1 }">Next</a>
							</li>
						</c:if>

					</ul>
				</div>
				<!--  end Pagination -->				
		</div>
			
				<form id='actionForm' action="/metaCar/main" method='get'>
					<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
					<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
				</form>


<div class="d-flex flex-column flex-shrink-0 p-3 text-bg-dark"
	style="width: 280px; float: right">
	<a href="/"
		class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
		<svg class="bi pe-none me-2" width="40" height="32">
      <use xlink:href="metaCar/main"></use>
    </svg> <span class="fs-4">예약된 차 확인</span>
	</a>
	<hr />
	<c:choose>
		<c:when test="${rental_car.id eq 'null'}"> 
			빌린 차량이 없습니다
		</c:when>
		<c:otherwise>
			${rental_car.carnum}
			${have_car.carmodel}
		</c:otherwise>
	</c:choose>
	예약된 차 정보
	<hr />
	<ul class="nav nav-pills flex-column mb-auto">
		<li><a href="#" class="nav-link text-white"> <svg
					class="bi pe-none me-2" width="16" height="16">
          <use xlink:href=""></use>
        </svg>
        <c:choose>
			<c:when test="${socar_member.id eq 'null'}"> 
				로그인후 이용가능
			</c:when>
			<c:otherwise>
				${socar_member.id} 님 반갑습니다
			</c:otherwise>
		</c:choose>
		</a>
		</li>
	</ul>
	<a href="carPay" style="text-decoration-line: none; text-align: center;">결제하기</a>
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
					});
		});

</script>

<%@include file="./includes/footer.jsp"%>
