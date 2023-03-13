<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<body>

	<div class="form-group">
		<label>차량사진</label>  <img
		src="/resources/img/${detail.carModel }.jpg"
		style="width: 100%; height: 400px;" alt="${detail.carModel }" />
	<br>
	<br>
	</div>
	<div class="form-group">
		<label>차량번호</label> <input class="form-control" name='carNum'
			value='<c:out value="${detail.carNum }"/>' readonly="readonly">
	</div>
	<br>
	<br>
	<div class="form-group">
		<label>차량모델</label> <input class="form-control" name='carModel'
			value='<c:out value="${detail.carModel }"/>' readonly="readonly">
	</div>
	<br>
	<br>


</body>
</html>