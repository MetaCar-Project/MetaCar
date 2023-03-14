<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반납</title>
<style type="text/css">

* {
    box-sizing: border-box;
} 
body {
    display:flex;
    justify-content: center;
    align-items: center;
    margin:50px auto;
}

 #returnButton {
    position: absolute;
    top:20%;
    background-color:#0a0a23;
    color: #fff;
    border:none; 
    border-radius:10px; 
    padding:15px;
    min-height:200px; 
    min-width: 200px;
    font-size:40px;
  }
 #returnButton:hover {
      background-color:#002ead;
      transition: 0.7s;
  }
  
 #returnButton:focus  {
    outline-color: transparent;
    outline-style:solid;
    box-shadow: 0 0 0 4px #5a01a7;
}

#cancelButton {
    position: absolute;
    top:50%;
    background-color:#0a0a23;
    color: #fff;
    border:none; 
    border-radius:10px; 
    padding:15px;
    min-height:200px; 
    min-width: 200px;
    font-size:40px;
  }
 #cancelButton:hover {
      background-color:#002ead;
      transition: 0.7s;
  }
  
 #cancelButton:focus  {
    outline-color: transparent;
    outline-style:solid;
    box-shadow: 0 0 0 4px #5a01a7;
}
  
</style>
</head>
<body>

		<h1>차량을 반납하시겠습니까?</h1>
<br>		
<button id="returnButton" class="button">반납</button>
<button id="cancelButton" class="button" onclick="location.href='/metaCar/main'">취소</button>
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