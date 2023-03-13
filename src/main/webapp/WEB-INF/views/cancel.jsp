<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 취소</title>
</head>
<body>
	<h1>예약 취소</h1>
	<form action="cancel" method="post">
		<label>예약번호: <input type="number" name="reserveNum"></label><br>
		<label>아이디: <input type="text" name="id"></label><br>
		<label>취소사유: <input type="text" name="cancelWhy"></label><br>
		
		<input type="submit" value="취소하기">
	</form>
</body>
</html>