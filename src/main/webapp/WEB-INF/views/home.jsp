<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="./includes/header.jsp"%>

<!-- SIDE BAR -->
<div class="d-flex flex-column flex-shrink-0 bg-light" style="width: 4.5rem; float: left">
  <a href="/" class="d-block p-3 link-dark text-decoration-none" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-original-title="Icon-only">
    <svg class="bi pe-none" width="40" height="32">
      <use xlink:href="#bootstrap"></use>
    </svg>
    <span class="visually-hidden">Icon-only</span>
  </a>
  <ul class="nav nav-pills nav-flush flex-column mb-auto text-center">
    <li class="nav-item">
      <a
        href="#"
        class="nav-link active py-3 border-bottom rounded-0"
        aria-current="page"
        data-bs-toggle="tooltip"
        data-bs-placement="right"
        aria-label="Home"
        data-bs-original-title="Home"
      >
        <svg class="bi pe-none" width="24" height="24" role="img" aria-label="Home">
          <use xlink:href="#home"></use>
        </svg>
      </a>
    </li>
    <li>
      <a
        href="#"
        class="nav-link py-3 border-bottom rounded-0"
        data-bs-toggle="tooltip"
        data-bs-placement="right"
        aria-label="Dashboard"
        data-bs-original-title="Dashboard"
      >
        <svg class="bi pe-none" width="24" height="24" role="img" aria-label="Dashboard">
          <use xlink:href="#speedometer2"></use>
        </svg>
      </a>
    </li>
    <li>
      <a
        href="#"
        class="nav-link py-3 border-bottom rounded-0"
        data-bs-toggle="tooltip"
        data-bs-placement="right"
        aria-label="Orders"
        data-bs-original-title="Orders"
      >
        <svg class="bi pe-none" width="24" height="24" role="img" aria-label="Orders">
          <use xlink:href="#table"></use>
        </svg>
      </a>
    </li>
    <li>
      <a
        href="#"
        class="nav-link py-3 border-bottom rounded-0"
        data-bs-toggle="tooltip"
        data-bs-placement="right"
        aria-label="Products"
        data-bs-original-title="Products"
      >
        <svg class="bi pe-none" width="24" height="24" role="img" aria-label="Products">
          <use xlink:href="#grid"></use>
        </svg>
      </a>
    </li>
    <li>
      <a
        href="#"
        class="nav-link py-3 border-bottom rounded-0"
        data-bs-toggle="tooltip"
        data-bs-placement="right"
        aria-label="Customers"
        data-bs-original-title="Customers"
      >
        <svg class="bi pe-none" width="24" height="24" role="img" aria-label="Customers">
          <use xlink:href="#people-circle"></use>
        </svg>
      </a>
    </li>
  </ul>
  <div class="dropdown border-top">
    <a
      href="#"
      class="d-flex align-items-center justify-content-center p-3 link-dark text-decoration-none dropdown-toggle"
      data-bs-toggle="dropdown"
      aria-expanded="false"
    >
      <img src="https://github.com/mdo.png" alt="mdo" width="24" height="24" class="rounded-circle" />
    </a>
    <ul class="dropdown-menu text-small shadow">
      <li><a class="dropdown-item" href="#">New project...</a></li>
      <li><a class="dropdown-item" href="#">Settings</a></li>
      <li><a class="dropdown-item" href="#">Profile</a></li>
      <li><hr class="dropdown-divider" /></li>
      <li><a class="dropdown-item" href="#">Sign out</a></li>
    </ul>
  </div>
</div>

<div class="album py-5 bg-light" style="padding-left: 100px; float: left">
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
            <text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text>
          </svg>
          <div class="card-body">
            <p class="card-text">
              This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.
            </p>
            <div class="d-flex justify-content-between align-items-center">
              <div class="btn-group">
                <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
              </div>
              <small class="text-muted">9 mins</small>
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
            <text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text>
          </svg>
          <div class="card-body">
            <p class="card-text">
              This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.
            </p>
            <div class="d-flex justify-content-between align-items-center">
              <div class="btn-group">
                <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
              </div>
              <small class="text-muted">9 mins</small>
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
            <text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text>
          </svg>
          <div class="card-body">
            <p class="card-text">
              This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.
            </p>
            <div class="d-flex justify-content-between align-items-center">
              <div class="btn-group">
                <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
              </div>
              <small class="text-muted">9 mins</small>
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
            <text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text>
          </svg>
          <div class="card-body">
            <p class="card-text">
              This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.
            </p>
            <div class="d-flex justify-content-between align-items-center">
              <div class="btn-group">
                <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
              </div>
              <small class="text-muted">9 mins</small>
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
            <text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text>
          </svg>
          <div class="card-body">
            <p class="card-text">
              This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.
            </p>
            <div class="d-flex justify-content-between align-items-center">
              <div class="btn-group">
                <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
              </div>
              <small class="text-muted">9 mins</small>
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
            <text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text>
          </svg>
          <div class="card-body">
            <p class="card-text">
              This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.
            </p>
            <div class="d-flex justify-content-between align-items-center">
              <div class="btn-group">
                <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
              </div>
              <small class="text-muted">9 mins</small>
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
            <text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text>
          </svg>
          <div class="card-body">
            <p class="card-text">
              This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.
            </p>
            <div class="d-flex justify-content-between align-items-center">
              <div class="btn-group">
                <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
              </div>
              <small class="text-muted">9 mins</small>
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
            <text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text>
          </svg>
          <div class="card-body">
            <p class="card-text">
              This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.
            </p>
            <div class="d-flex justify-content-between align-items-center">
              <div class="btn-group">
                <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
              </div>
              <small class="text-muted">9 mins</small>
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
            <text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text>
          </svg>
          <div class="card-body">
            <p class="card-text">
              This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.
            </p>
            <div class="d-flex justify-content-between align-items-center">
              <div class="btn-group">
                <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
              </div>
              <small class="text-muted">9 mins</small>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- 
<div class="text-bg-dark"; style="height: 100vh;">
<a href="/"
		class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
		<svg class="bi pe-none me-2" width="40" height="32">
			<use xlink:href="#bootstrap"></use></svg> <span class="fs-4">Sidebar</span>
	</a>
	<hr>
	<ul class="nav nav-pills flex-column mb-auto">
		<li class="nav-item"><a href="#" class="nav-link active"
			aria-current="page"> <svg class="bi pe-none me-2" width="16"
					height="16">
					<use xlink:href="#home"></use></svg> Home
		</a></li>
		<li><a href="#" class="nav-link text-white"> <svg
					class="bi pe-none me-2" width="16" height="16">
					<use xlink:href="#speedometer2"></use></svg> Dashboard
		</a></li>
		<li><a href="#" class="nav-link text-white"> <svg
					class="bi pe-none me-2" width="16" height="16">
					<use xlink:href="#table"></use></svg> Orders
		</a></li>
		<li><a href="#" class="nav-link text-white"> <svg
					class="bi pe-none me-2" width="16" height="16">
					<use xlink:href="#grid"></use></svg> Products
		</a></li>
		<li><a href="#" class="nav-link text-white"> <svg
					class="bi pe-none me-2" width="16" height="16">
					<use xlink:href="#people-circle"></use></svg> Customers
		</a></li>
	</ul>
	<hr>
	<div class="dropdown">
		<a href="#"
			class="d-flex align-items-center text-white text-decoration-none dropdown-toggle"
			data-bs-toggle="dropdown" aria-expanded="false"> <img
			src="https://github.com/mdo.png" alt="" width="32" height="32"
			class="rounded-circle me-2"> <strong>mdo</strong>
		</a>
		<ul class="dropdown-menu dropdown-menu-dark text-small shadow">
			<li><a class="dropdown-item" href="#">New project...</a></li>
			<li><a class="dropdown-item" href="#">Settings</a></li>
			<li><a class="dropdown-item" href="#">Profile</a></li>
			<li><hr class="dropdown-divider"></li>
			<li><a class="dropdown-item" href="#">Sign out</a></li>
		</ul>
	</div>
</div> -->

<div class="d-flex flex-column flex-shrink-0 p-3 text-bg-dark" style="width: 280px; float: right">
  <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
    <svg class="bi pe-none me-2" width="40" height="32">
      <use xlink:href="#bootstrap"></use>
    </svg>
    <span class="fs-4">Sidebar</span>
  </a>
  <hr />
  <ul class="nav nav-pills flex-column mb-auto">
    <li class="nav-item">
      <a href="#" class="nav-link active" aria-current="page">
        <svg class="bi pe-none me-2" width="16" height="16">
          <use xlink:href="#home"></use>
        </svg>
        Home
      </a>
    </li>
    <li>
      <a href="#" class="nav-link text-white">
        <svg class="bi pe-none me-2" width="16" height="16">
          <use xlink:href="#speedometer2"></use>
        </svg>
        Dashboard
      </a>
    </li>
    <li>
      <a href="#" class="nav-link text-white">
        <svg class="bi pe-none me-2" width="16" height="16">
          <use xlink:href="#table"></use>
        </svg>
        Orders
      </a>
    </li>
    <li>
      <a href="#" class="nav-link text-white">
        <svg class="bi pe-none me-2" width="16" height="16">
          <use xlink:href="#grid"></use>
        </svg>
        Products
      </a>
    </li>
    <li>
      <a href="#" class="nav-link text-white">
        <svg class="bi pe-none me-2" width="16" height="16">
          <use xlink:href="#people-circle"></use>
        </svg>
        Customers
      </a>
    </li>
  </ul>
  <hr />
  <div class="dropdown">
    <a href="#" class="d-flex align-items-center text-white text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
      <img src="https://github.com/mdo.png" alt="" width="32" height="32" class="rounded-circle me-2" /> <strong>mdo</strong>
    </a>
    <ul class="dropdown-menu dropdown-menu-dark text-small shadow">
      <li><a class="dropdown-item" href="#">New project...</a></li>
      <li><a class="dropdown-item" href="#">Settings</a></li>
      <li><a class="dropdown-item" href="#">Profile</a></li>
      <li><hr class="dropdown-divider" /></li>
      <li><a class="dropdown-item" href="#">Sign out</a></li>
    </ul>
  </div>
</div>

<%@include file="./includes/footer.jsp"%>
