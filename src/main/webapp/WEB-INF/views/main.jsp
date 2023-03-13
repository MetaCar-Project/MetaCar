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
	<form id='searchForm' action="/metaCar/main" method='get'>
		<ul class="nav nav-pills flex-column mb-auto">
			<li>
				<div class="text-white fs-4">차종 선택</div>

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
						<label class="input-group-text" for="inputGroupSelect01">쏘카존</label>
					</div>
					<select class="custom-select" id="zoneType" name="zoneType">
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
						<label class="input-group-text" for="inputGroupSelect01">검색</label>
					</div>
					<input type='text' name='keyword'>
				</div>
			</li>
		</ul>
		<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
		<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
		<button type="submit" class="btn btn-primary">제출</button>
	</form>
	<hr />
</div>

<div class="album py-5 bg-light"
	style="float: left; padding-left: 20px;">
	<!-- ALBUM -->
	<div class="container">
		<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3"
			style="width: 1300px">

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
