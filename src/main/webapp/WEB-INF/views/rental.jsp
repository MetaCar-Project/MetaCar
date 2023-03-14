<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@include file="./includes/header.jsp"%>
<style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }
	
      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
    </style>

    

<div class="container">
  <main>
    <div class="py-5 text-center">
      <img class="d-block mx-auto mb-4" src="/resources/img/${car.carModel}.jpg" alt="${car.carModel }" width="800" height="400">
      <h2>대여 신청</h2>
      <p class="lead"><c:out value="${car.carNum }"/></p>
    </div>

    <div class="row g-5">
      <div class="col-md-5 col-lg-4 order-md-last">
        <h4 class="d-flex justify-content-between align-items-center mb-3">
          <span class="text-primary">차량정보</span>
          <span class="badge bg-primary rounded-pill"></span>
        </h4>
        <ul class="list-group mb-3">
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">모델명</h6>
              <small class="text-muted"></small>
            </div>
            <span class="text-muted"><c:out value="${car.carModel }"/></span>
          </li>
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">제조사</h6>
              <small class="text-muted"></small>
            </div>
            <span class="text-muted"><c:out value="${car.carMaking }"/></span>
          </li>
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">연료</h6>
              <small class="text-muted"></small>
            </div>
            <span class="text-muted"><c:out value="${car.carGas }"/></span>
          </li>
          <li class="list-group-item d-flex justify-content-between bg-light">
            <div class="text-success">
              <h6 class="my-0">연비</h6>
              <small></small>
            </div>
            <span class="text-success"><c:out value="${car.carEff }"/></span>
          </li>
          <li class="list-group-item d-flex justify-content-between">
            <span>시간당 가격</span>
            <strong id="money"><c:out value="${car.distanceDto.howmuch }"/>만원</strong>
          </li>
        </ul>
		<!-- 
        <form class="card p-2">
          <div class="input-group">
            <input type="text" class="form-control" placeholder="Promo code">
            <button type="submit" class="btn btn-secondary">Redeem</button>
          </div>
        </form>
         -->
      </div>
      <div class="col-md-7 col-lg-8">
        <h4 class="mb-3">신청 정보</h4>
        <form class="needs-validation" novalidate >
          <div class="row g-3">
          
            <div class="col-sm-6">
              <label for="firstName" class="form-label">ID</label>
              <!--  
              <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
               -->
              	<ul class="list-group mb-3">
          			<li class="list-group-item d-flex justify-content-between lh-sm">
            			<div>
              				<h6 class="my-0"><sec:authentication property="principal.sm.id"/></h6>
              				<small class="text-muted"></small>
            			</div>
            		</li>
            	</ul>
              <div class="invalid-feedback">
                Valid first name is required.
              </div>
            </div>
			
			<!-- 
            <div class="col-sm-6">
              <label for="lastName" class="form-label">Last name</label>
              <input type="text" class="form-control" id="lastName" placeholder="" value="" required>
              <div class="invalid-feedback">
                Valid last name is required.
              </div>
            </div>
			 -->

            <div class="col-12">
              <label for="username" class="form-label">이름</label>
              <div class="input-group has-validation">
                <ul class="list-group mb-3">
          			<li class="list-group-item d-flex justify-content-between lh-sm">
            			<div>
              				<h6 class="my-0"><sec:authentication property="principal.sm.name"/></h6>
              				<small class="text-muted"></small>
            			</div>
            		</li>
            	</ul>
              <div class="invalid-feedback">
                  Your username is required.
                </div>
              </div>
            </div>


            <div class="col-12">
              <label for="email" class="form-label">반납주소</label>
              <input type="text" class="form-control" id="address" placeholder="ex)경찰병원, 가락시장" required="required">
              <div class="invalid-feedback">
                Please enter a valid email address for shipping updates.
              </div>
            </div>



            <div class="col-md-5">
              <label for="country" class="form-label">이용시간</label>
              <select class="form-select" id="country" required>
                <option value="">Choose...</option>
                <option value="1">1시간</option>
                <option value="2">2시간</option>
                <option value="3">3시간</option>
                <option value="4">4시간</option>
              </select>
              <div class="invalid-feedback">
                Please select a valid country.
              </div>
            </div>
			
			<!-- 
            <div class="col-md-4">
              <label for="state" class="form-label">State</label>
              <select class="form-select" id="state" required>
                <option value="">Choose...</option>
                <option>California</option>
              </select>
              <div class="invalid-feedback">
                Please provide a valid state.
              </div>
            </div>

            <div class="col-md-3">
              <label for="zip" class="form-label">Zip</label>
              <input type="text" class="form-control" id="zip" placeholder="" required>
              <div class="invalid-feedback">
                Zip code required.
              </div>
            </div>
          </div>
		   -->
		   
          <hr class="my-4">
			
			
		<!-- 
          <div class="form-check">
            <input type="checkbox" class="form-check-input" id="same-address">
            <label class="form-check-label" for="same-address">Shipping address is the same as my billing address</label>
          </div>

          <div class="form-check">
            <input type="checkbox" class="form-check-input" id="save-info">
            <label class="form-check-label" for="save-info">Save this information for next time</label>
          </div>

          <hr class="my-4">

          <h4 class="mb-3">Payment</h4>

          <div class="my-3">
            <div class="form-check">
              <input id="credit" name="paymentMethod" type="radio" class="form-check-input" checked required>
              <label class="form-check-label" for="credit">Credit card</label>
            </div>
            <div class="form-check">
              <input id="debit" name="paymentMethod" type="radio" class="form-check-input" required>
              <label class="form-check-label" for="debit">Debit card</label>
            </div>
            <div class="form-check">
              <input id="paypal" name="paymentMethod" type="radio" class="form-check-input" required>
              <label class="form-check-label" for="paypal">PayPal</label>
            </div>
          </div>

          <div class="row gy-3">
            <div class="col-md-6">
              <label for="cc-name" class="form-label">Name on card</label>
              <input type="text" class="form-control" id="cc-name" placeholder="" required>
              <small class="text-muted">Full name as displayed on card</small>
              <div class="invalid-feedback">
                Name on card is required
              </div>
            </div>

            <div class="col-md-6">
              <label for="cc-number" class="form-label">Credit card number</label>
              <input type="text" class="form-control" id="cc-number" placeholder="" required>
              <div class="invalid-feedback">
                Credit card number is required
              </div>
            </div>

            <div class="col-md-3">
              <label for="cc-expiration" class="form-label">Expiration</label>
              <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
              <div class="invalid-feedback">
                Expiration date required
              </div>
            </div>

            <div class="col-md-3">
              <label for="cc-cvv" class="form-label">CVV</label>
              <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
              <div class="invalid-feedback">
                Security code required
              </div>
            </div>
          </div>
			 -->
          <hr class="my-4">
			
			<div class="col-sm-6">
              <label for="firstName" class="form-label">예상결제금액</label>
              <!--  
              <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
               -->
              	<ul class="list-group mb-3">
          			<li class="list-group-item d-flex justify-content-between lh-sm">
            			<div>
              				<h6 class="my-0" id="totalPrice"></h6>
              				<small class="text-muted"></small>
            			</div>
            		</li>
            	</ul>
              <div class="invalid-feedback">
                Valid first name is required.
              </div>
            </div>
		
			<div>
				<c:out value="${test }"/>
			</div>
			
          <button id="submitButton" class="w-100 btn btn-primary btn-lg" type="submit">Continue to checkout</button>
        </form>
      </div>
    </div>
  </main>
</div>
<form id="rentalForm" action="/metaCar/rental" method="post">
    	<input name="id" type="hidden"/>
    	<input name="useTime" type="hidden"/>
    	<input name="returnAdd" type="hidden"/>
    	<input name="carNum" type="hidden"/>
    	<input name="sczoneNum" type="hidden"/>
    	 <input type="hidden" name="${_csrf.parameterName}"
    value="${_csrf.token}" />
</form>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<script>

$(function(){
	console.log("script");
	
	$('#country').on('change',function(){
		console.log('change');
		var howlong = $(this).val();
		var howmuch = parseInt($('#money').text());
		var totalprice = howlong*howmuch;
		//var total price = howlong * 
		$('#totalPrice').text(totalprice + "만원");
	})
	
	
	$('#submitButton').on("click",function(e){
		e.preventDefault();
		
		
		
		var id = "<sec:authentication property="principal.sm.id"/>";
		console.log("id : " +id);
		
		var csrfHeaderName = "${_csrf.headerName}";
			var csrfTokenValue = "${_csrf.token}";
		
		 $.ajax({
             type : 'post',
             url : '/metaCar/checkreserve',
             data : JSON.stringify(id),
             beforeSend : function(xhr){
             	xhr.setRequestHeader(csrfHeaderName,csrfTokenValue);		
             },
             contentType : "application/json; charset=utf-8",
             success : function(result, status, xhr){
            	 console.log("result  : " + result);
                 if(result=='havereserve'){
                	 alert("이미 예약한 차량이있습니다.");
                	 
                 }
                 if(result=='noreserve'){
                	$('input[name="id"]').val("<sec:authentication property="principal.sm.id"/>");
             		
             		$('input[name="useTime"]').val($('#country').val());
             		
             		$('input[name="returnAdd"]').val($('#address').val());
             		
             		var sczone= "<c:out value='${car.sczoneNum }'/>";
             		$('input[name="sczoneNum"]').val(sczone);
             		
             		var carnum = "<c:out value='${car.carNum }'/>"
             		$('input[name="carNum"]').val(carnum);
             		
             		$('#rentalForm').submit();
                	 alert("예약이 완료되었습니다.");
                 }
             }
         });
		
		 
		
		console.log("click");
		
		if($('#country').val()==""){
			alert("이용시간을 선택하십시오.");
			return;
		}
		
		if($('#address').val()==""){
			alert("반납주소를 입력해주세요");
			return;
		}
		
		/* $('input[name="id"]').val("<sec:authentication property="principal.sm.id"/>");
		
		$('input[name="useTime"]').val($('#country').val());
		
		$('input[name="returnAdd"]').val($('#address').val());
		
		var sczone= "<c:out value='${car.sczoneNum }'/>";
		$('input[name="sczoneNum"]').val(sczone);
		
		var carnum = "<c:out value='${car.carNum }'/>"
		$('input[name="carNum"]').val(carnum);
		
		$('#rentalForm').submit(); */
		
	});
	
	
	
	
	
	
})

</script>


<%@include file="./includes/footer.jsp"%>