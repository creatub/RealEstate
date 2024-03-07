<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="/inc/top.jsp" />
<main>
	
	<header>
		<div id="img_wrapper">
			<img id="main_pht" src="">
		</div>
		
		<form id="header_info_wrapper" name="orderFrm" method="get" action="../order/order.jsp">
			<input type="hidden" name="flag" value="oneProduct">
			<input type="hidden" name="p_code" value="">
			<div class="header name">
				<span></span>
			</div>
			<div class="header price">
				<span class="title">가격</span>
				<span class="content" id="price"></span><span> 원</span>
				<!-- <input class="content" id="price" type="text" value="30000" readonly><span> 원</span>  -->
			</div>
			<div class="header volume">
				<span class="title">판매 용량</span>
				<span class="content">1상자 / 600g</span>
			</div>
			<div class="header quantity">
				<span class="title">구매 수량</span>
				<i id="button_down" class="far fa-minus-square"></i>
				<input id="quantity" class="quantity" name="quantity" 
				type="number" min="1" max="" step="1" value="1">
				<i id="button_up" class="far fa-plus-square"></i>
			</div>
			<div class="header total">
				<span class="title">총 상품 금액</span>
				<span id="total"></span><span> 원</span>
				<!--<input id="total" type="text" readonly>-->
			</div>
			<div class="header btn_wrapper">
				<input id="cartBtn" type="button" class="btn" value="장바구니에 추가"
				onclick="addCart()"> 
				<input id="submit_btn" type="button" 
				onclick="logincheck_goods()" class="btn" value="구매하기">
			</div>
		</form>			

	</header>
	<form name="cartFrm" method="post"> 
	<input type="hidden" name="id_goods" value="">
	<input type="hidden" name="p_code" value="">
	<input type="hidden" name="c_qty" value="">
	</form>
			
			<!--  제품 추천 알고리즘 영역 -->
			<div id="recom_wrapper" style="display:none;">
				<div class="title">
					<span>이 제품은 어떠세요?</span>
				</div>
				<ul>
					<li>
					</li>
				</ul>
			</div>
			
			<!-- 설명 이미지 영역 -->
			<div id="detail">
				<img id="detail_pht" src="">
			</div>
			
			<!-- 상세 이미지 영역    display : none -->
			<div id="detail" style="display:none;">
				<img id="detail_pht" src="">
			</div>
			
			
			<!--  리뷰 영역 -->
			<div class="goods_view_reivew_wrapper">
				<% String reviewList = "goods_view";%>
			</div>
			
		</div>

	


</main>

<script src="js/goods_view.js"></script>



<jsp:include page="/inc/foot.jsp" />
