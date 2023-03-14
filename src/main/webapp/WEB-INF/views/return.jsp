<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

정말 반납 ?

<button id="returnButton">반납</button>
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<script>
$(function() {
	
	$("#returnButton").on("click",function(){
		
		var id = "<sec:authentication property='principal.sm.id'/>";
		console.log(id);
		var csrfHeaderName = "${_csrf.headerName}";
		var csrfTokenValue = "${_csrf.token}";
		
		$.ajax({
            type : 'post',
            url : '/metaCar/return',
            data : JSON.stringify(id),
            beforeSend : function(xhr){
            	xhr.setRequestHeader(csrfHeaderName,csrfTokenValue);		
            },
            contentType : "application/json; charset=utf-8",
            success : function(result, status, xhr){
           		if(result=='success'){
           			alert("반납이 완료되었습니다.");
           			window.location.replace("/metaCar/main");
           		}
            }
		});
	})
	
})




</script>
</html>