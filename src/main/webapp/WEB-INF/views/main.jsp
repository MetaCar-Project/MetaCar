<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="./includes/header.jsp"%>

<!-- SIDE BAR -->
<div class="d-flex flex-column flex-shrink-0 p-3 text-bg-dark" style="width: 280px; float: left">
  <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
    <svg class="bi pe-none me-2" width="40" height="32">
      <use xlink:href="#bootstrap"></use>
    </svg>
    <span class="fs-4">Sidebar3</span>
  </a>
  <hr />
  <ul class="nav nav-pills flex-column mb-auto">
    <li>
      <div class="text-white fs-4">차종 선택</div>
      <input type="checkbox" style="float: left" />
      <div style="height: 100%; width: 100%">
        <p href="#" class="nav-link text-white">경차</p>
      </div>
      <input type="checkbox" style="float: left" />
      <div style="height: 100%; width: 100%">
        <p href="#" class="nav-link text-white">경차</p>
      </div>
      <input type="checkbox" style="float: left" />
      <div style="height: 100%; width: 100%">
        <p href="#" class="nav-link text-white">경차</p>
      </div>
      <input type="checkbox" style="float: left" />
      <div style="height: 100%; width: 100%">
        <p href="#" class="nav-link text-white">경차</p>
      </div>
    </li>
    <li>
      <div class="input-group mb-3">
        <div class="input-group-prepend">
          <label class="input-group-text" for="inputGroupSelect01">쏘카존</label>
        </div>
        <select class="custom-select" id="inputGroupSelect01">
          <option selected>쏘카존을 선택하세요</option>
          <option value="1">수서역</option>
          <option value="2">학동역</option>
          <option value="3">경찰병원역</option>
          <option value="3">가락시장역</option>
        </select>
      </div>
    </li>
    <li>
      <form class="form-inline">
        <input class="form-control mr-sm-2" type="search" placeholder="차량이름 검색" aria-label="search" />
        <button class="btn btn-outline-success my-2 my-sm-0 text-bg-white" type="submit" style="background-color: white">검색</button>
      </form>
    </li>
  </ul>
  <hr />
</div>

<div class="album py-5 bg-light" style="float: left;padding-left:20px;">
  <!-- ALBUM -->
  <div class="container">
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
      <div class="col">
        <div class="card shadow-sm">
          <svg
            class="bd-placeholder-img card-img-top"
            width="100%"
            height="225"
            xmlns="http://www.w3.org/2000/svg"
            role="img"
            aria-label="Placeholder: Thumbnail"
            preserveAspectRatio="xMidYMid slice"
            focusable="false"
          >
            <title>Placeholder</title>
            <rect width="100%" height="100%" fill="#55595c"></rect>
            <text x="50%" y="50%" fill="#eceeef" dy=".3em">차사진</text>
          </svg>
          <div class="card-body">
            <p class="card-text">
             차 내용 1
            </p>
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
      
      <div class="col">
        <div class="card shadow-sm">
          <svg
            class="bd-placeholder-img card-img-top"
            width="100%"
            height="225"
            xmlns="http://www.w3.org/2000/svg"
            role="img"
            aria-label="Placeholder: Thumbnail"
            preserveAspectRatio="xMidYMid slice"
            focusable="false"
          >
            <title>Placeholder</title>
            <rect width="100%" height="100%" fill="#55595c"></rect>
            <text x="50%" y="50%" fill="#eceeef" dy=".3em">차사진</text>
          </svg>
          <div class="card-body">
            <p class="card-text">
              차 내용 2
            </p>
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
      
      <div class="col">
        <div class="card shadow-sm">
          <svg
            class="bd-placeholder-img card-img-top"
            width="100%"
            height="225"
            xmlns="http://www.w3.org/2000/svg"
            role="img"
            aria-label="Placeholder: Thumbnail"
            preserveAspectRatio="xMidYMid slice"
            focusable="false"
          >
             <title>Placeholder</title>
            <rect width="100%" height="100%" fill="#55595c"></rect>
            <text x="50%" y="50%" fill="#eceeef" dy=".3em">차사진</text>
          </svg>
          <div class="card-body">
            <p class="card-text">
              차 내용 3
            </p>
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

      <div class="col">
        <div class="card shadow-sm">
          <svg
            class="bd-placeholder-img card-img-top"
            width="100%"
            height="225"
            xmlns="http://www.w3.org/2000/svg"
            role="img"
            aria-label="Placeholder: Thumbnail"
            preserveAspectRatio="xMidYMid slice"
            focusable="false"
          >
              <title>Placeholder</title>
            <rect width="100%" height="100%" fill="#55595c"></rect>
            <text x="50%" y="50%" fill="#eceeef" dy=".3em">차사진</text>
          </svg>
          <div class="card-body">
            <p class="card-text">
              차 내용 4
            </p>
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
      
      <div class="col">
        <div class="card shadow-sm">
          <svg
            class="bd-placeholder-img card-img-top"
            width="100%"
            height="225"
            xmlns="http://www.w3.org/2000/svg"
            role="img"
            aria-label="Placeholder: Thumbnail"
            preserveAspectRatio="xMidYMid slice"
            focusable="false"
          >
              <title>Placeholder</title>
            <rect width="100%" height="100%" fill="#55595c"></rect>
            <text x="50%" y="50%" fill="#eceeef" dy=".3em">차사진</text>
          </svg>
          <div class="card-body">
            <p class="card-text">
              차 내용 5
            </p>
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
      
      <div class="col">
        <div class="card shadow-sm">
          <svg
            class="bd-placeholder-img card-img-top"
            width="100%"
            height="225"
            xmlns="http://www.w3.org/2000/svg"
            role="img"
            aria-label="Placeholder: Thumbnail"
            preserveAspectRatio="xMidYMid slice"
            focusable="false"
          >
              <title>Placeholder</title>
            <rect width="100%" height="100%" fill="#55595c"></rect>
            <text x="50%" y="50%" fill="#eceeef" dy=".3em">차사진</text>
          </svg>
          <div class="card-body">
            <p class="card-text">
              차 내용 6
            </p>
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

      <div class="col">
        <div class="card shadow-sm">
          <svg
            class="bd-placeholder-img card-img-top"
            width="100%"
            height="225"
            xmlns="http://www.w3.org/2000/svg"
            role="img"
            aria-label="Placeholder: Thumbnail"
            preserveAspectRatio="xMidYMid slice"
            focusable="false"
          >
             <title>Placeholder</title>
            <rect width="100%" height="100%" fill="#55595c"></rect>
            <text x="50%" y="50%" fill="#eceeef" dy=".3em">차사진</text>
          </svg>
          <div class="card-body">
            <p class="card-text">
              차 내용 7
            </p>
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
      
      <div class="col">
        <div class="card shadow-sm">
          <svg
            class="bd-placeholder-img card-img-top"
            width="100%"
            height="225"
            xmlns="http://www.w3.org/2000/svg"
            role="img"
            aria-label="Placeholder: Thumbnail"
            preserveAspectRatio="xMidYMid slice"
            focusable="false"
          >
              <title>Placeholder</title>
            <rect width="100%" height="100%" fill="#55595c"></rect>
            <text x="50%" y="50%" fill="#eceeef" dy=".3em">차사진</text>
          </svg>
          <div class="card-body">
            <p class="card-text">
              차 내용 8
            </p>
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
      
      <div class="col">
        <div class="card shadow-sm">
          <svg
            class="bd-placeholder-img card-img-top"
            width="100%"
            height="225"
            xmlns="http://www.w3.org/2000/svg"
            role="img"
            aria-label="Placeholder: Thumbnail"
            preserveAspectRatio="xMidYMid slice"
            focusable="false"
          >
              <title>Placeholder</title>
            <rect width="100%" height="100%" fill="#55595c"></rect>
            <text x="50%" y="50%" fill="#eceeef" dy=".3em">차사진</text>
          </svg>
          <div class="card-body">
            <p class="card-text">
              차 내용 9
            </p>
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
  </div>
 </div>
</div>    
      

<div class="d-flex flex-column flex-shrink-0 p-3 text-bg-dark" style="width: 280px; float: right">
  <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
    <svg class="bi pe-none me-2" width="40" height="32">
      <use xlink:href="#bootstrap"></use>
    </svg>
    <span class="fs-4">예약된 차 확인</span>
  </a>
  <hr />
   예약된 차 정보
  <hr />
  <ul class="nav nav-pills flex-column mb-auto">
    <li>
      <a href="#" class="nav-link text-white">
        <svg class="bi pe-none me-2" width="16" height="16">
          <use xlink:href="#people-circle"></use>
        </svg>
       UserId
      </a>
    </li>
    <a href="carPay" style="text-decoration-line:none; text-align:center;"/>결제하기
  </ul>
  </div>

<%@include file="./includes/footer.jsp"%>