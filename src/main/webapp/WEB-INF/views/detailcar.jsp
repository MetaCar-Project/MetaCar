<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<head>
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.3/examples/headers/">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body>
	<div style="width: 600px; height: 90%">
		<ul style="width: 90%; list-style-type: none;">
			<li>
				<br>
				<img src="/resources/img/${detail.carModel }.jpg"
				style="width: 550px;" alt="${detail.carModel }" />
				<br>
			</li>
			<li><br>
			<label>차량번호</label> <input class="form-control"
				name='carNum' value='<c:out value="${detail.carNum }"/>'
				readonly="readonly"></li>
			<li><label>차량모델</label> <input class="form-control"
				name='carModel' value='<c:out value="${detail.carModel }"/>'
				readonly="readonly"></li>
			<li><label>차종</label> <input class="form-control" name='carKind'
				value='<c:out value="${detail.carKind }"/>' readonly="readonly">

			</li>
			<li><label>차량제조사</label> <input class="form-control"
				name='carMaking' value='<c:out value="${detail.carMaking }"/>'
				readonly="readonly"></li>
			<li><label>차량기름</label> <input class="form-control"
				name='carGas' value='<c:out value="${detail.carGas }"/>'
				readonly="readonly"></li>
			<li><label>연비</label> <input class="form-control" name='carEff'
				value='<c:out value="${detail.carEff }"/>' readonly="readonly">

			</li>

		</ul>
	</div>
</body>
</html>