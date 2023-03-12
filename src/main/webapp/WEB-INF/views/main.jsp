<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="./includes/header.jsp"%>

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
			<div class="text-white fs-4">차종 선택</div> <input type="checkbox"
			id="typeSmall" style="float: left" />
			<div style="height: 100%; width: 100%">
				<p class="nav-link text-white">경차</p>
			</div> <input type="checkbox" id="typeMiddle" style="float: left" />
			<div style="height: 100%; width: 100%">
				<p class="nav-link text-white">중형</p>
			</div> <input type="checkbox" id="typeBig" style="float: left" />
			<div style="height: 100%; width: 100%">
				<p class="nav-link text-white">대형</p>
			</div> <input type="checkbox" id="typeSUV" style="float: left" />
			<div style="height: 100%; width: 100%">
				<p class="nav-link text-white">SUV</p>
			</div>
		</li>
		<li>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<label class="input-group-text" for="inputGroupSelect01">쏘카존</label>
				</div>
				<select class="custom-select" id="zoneSelect" name="zoneSelect">
					<option selected>쏘카존을 선택하세요</option>
					<option value="1">수서역</option>
					<option value="2">학동역</option>
					<option value="3">경찰병원역</option>
					<option value="4">가락시장역</option>
				</select>
			</div>
		</li>
	</ul>
	<hr />
</div>
<%-- 
<form id='searchForm' action="/board/list" method='get'>
	<select name='type'>
		<option value=""
			<c:out value="${pageMaker.cri.type == null?'selected':''}"/>>--</option>
		<option value="T"
			<c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>제목</option>
		<option value="C"
			<c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>내용</option>
		<option value="W"
			<c:out value="${pageMaker.cri.type eq 'W'?'selected':''}"/>>작성자</option>
		<option value="TC"
			<c:out value="${pageMaker.cri.type eq 'TC'?'selected':''}"/>>제목
			or 내용</option>
		<option value="TW"
			<c:out value="${pageMaker.cri.type eq 'TW'?'selected':''}"/>>제목
			or 작성자</option>
		<option value="TWC"
			<c:out value="${pageMaker.cri.type eq 'TWC'?'selected':''}"/>>제목
			or 내용 or 작성자</option>
	</select> <input type='text' name='keyword'
		value='<c:out value="${pageMaker.cri.keyword}"/>' /> <input
		type='hidden' name='pageNum'
		value='<c:out value="${pageMaker.cri.pageNum}"/>' /> <input
		type='hidden' name='amount'
		value='<c:out value="${pageMaker.cri.amount}"/>' />
	<button class='btn btn-default'>Search</button>
</form>

 --%>


<button id="searchBtn">search3</button>
<button id='abcBtn' name='save'>저장</button>
<br />

<!-- 
	typeSmall
	typeMiddle
	typeBig 
	typeSUV
 -->

<script type="text/javascript">
	$(document).ready(function() {
		$("button[id='abcBtn']").click(function() {
			$("body").append("click!@!!<br/>");
		});
	});
	$(document).ready(function() {
		let zoneNum;
		$("#zoneSelect").change(function() {
			console.log("change");
			zoneNum = $(this).val();
		});

		$('#searchBtn').click(function() {
			let carType = [];
			if ($('#typeSmall').is(':checked')) {
				carType.push('경차');
			}
			if ($('#typeMiddle').is(':checked')) {
				carType.push('중형');
			}
			if ($('#typeBig').is(':checked')) {
				carType.push('대형');
			}
			if ($('#typeSUV').is(':checked')) {
				carType.push('SUV');
			}
			alert(carType);
			alert(zoneNum);
		})
	});
</script>

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
									<button type="button" class="btn btn-sm btn-outline-secondary">상세보기</button>
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
</div>


<div class="d-flex flex-column flex-shrink-0 p-3 text-bg-dark"
	style="width: 280px; float: right">
	<a href="/"
		class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
		<svg class="bi pe-none me-2" width="40" height="32">
      <use xlink:href="#bootstrap"></use>
    </svg> <span class="fs-4">예약된 차 확인</span>
	</a>
	<hr />
	예약된 차 정보
	<hr />
	<ul class="nav nav-pills flex-column mb-auto">
		<li><a href="#" class="nav-link text-white"> <svg
					class="bi pe-none me-2" width="16" height="16">
          <use xlink:href="#people-circle"></use>
        </svg> UserId
		</a></li>
	</ul>
	<a href="carPay"
		style="text-decoration-line: none; text-align: center;"> 결제하기 </a>
</div>

<%@include file="./includes/footer.jsp"%>
