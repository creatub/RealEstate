<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "member.model.*"%>
<!-- ---------------------------------------- -->
<%@include file="/login/loginCheckModule.jsp" %>
<%
	MemberDAO dao = new MemberDAO();
	MemberVO vo = dao.findById(loginId);
%>
<!-- ---------------------------------------- --> 
<style>
	.container_mypage{
		display: flex;
		width: 90%;
		flex-direction: row; /* 요소들을 수평으로 배치합니다 */
		justify-content: space-between; 
   		margin: auto; /* 중앙 정렬을 위해 마진을 자동으로 설정합니다 */
		
	}
	.outer{
		width:40%;
		min-width : 650px;
		background: rgb(248, 249, 250);
		box-shadow: rgba(0, 0, 0, 0.06) 0px 0px 4px 0px;
		margin:auto;
		margin-top : 70px;
		margin-bottom : 70px;
		display: flex; /* 외부 컨테이너를 플렉스 박스로 설정 */
        justify-content: center; /* 내부 요소를 가운데 정렬 */
        
        
	}
	
	#joinForm {
		width : 500px;
		margin: auto;
		padding: 10px;
	}
	
	#joinForm h1 {
		text-align:center;
	}
	

	.input_area {
	    border: solid 1px #dadada;
	    padding : 10px 10px 14px 10px;
	    background : white;
	}
	

	.input_area input:not([type=checkbox]) {
		width : 300px;
		height : 30px;
		border: 0px;
	}
	
	.btnArea {
		text-align:center;
		padding : 50px;
	}
	
	button.bt {
		width : 100px;
		height : 35px;
		border : 0px;
		color:white;
		background:#282A35;
		margin : 5px;
	}
	
</style>
    
    
<jsp:include page="/inc/top.jsp" />
<div id="joinForm">
<h1>마이페이지</h1>
</div>

<div class="container_mypage">
	<div class="outer">
	<h2>내가 쓴 글</h2>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	</div>
	<div class="outer">
		<div id="joinInfoArea">
			<form id="joinForm" action="<%= request.getContextPath() %>/login/update.jsp"
			method="post" onsubmit="return validate();">
				<h3>회원정보 수정</h3>
				
				<h4>* 아이디</h4>
				<span class="input_area"><input type="text" maxlength="13" name="id" value=<%=loginId %> required></span>
				
				<h4>* 비밀번호</h4>
				<span class="input_area"><input type="password" maxlength="15" name="pw" required></span>
				
				<h4>* 비밀번호 확인</h4>
				<span class="input_area"><input type="password" maxlength="15" name="pw2" required></span>
				<label id="pwdResult"></label>
				
				<h4>* 이름</h4>
				<span class="input_area"><input type="text" maxlength="5" name="name" value=<%=vo.getName() %> required></span>
				
				<h4>연락처</h4>
				<span class="input_area"><input type="tel" maxlength="11" name="tel"
										value=<%=vo.getTel() %>></span>
										
				<h4>이메일</h4>
				<span class="input_area"><input type="email" name="email" value=<%=vo.getEmail() %>></span>
				
				<h4>우편번호</h4>
				<span class="input_area"><input type="text" name="addr1" class="postcodify_postcode5" value=<%=vo.getAddr1() %>></span>
				<button type="button" id="postcodify_search_button" class="bt">검색</button>
				<h4>도로명주소</h4>
				<span class="input_area"><input type="text" name="addr2" class="postcodify_address" value=<%=vo.getAddr2() %>></span>
				<h4>상세주소</h4>
				<span class="input_area"><input type="text" name="addr3" class="postcodify_details" value=<%=vo.getAddr3() %>></span>

				<div class="btnArea">
					<button id="joinBtn" class="bt" style="width : 300px">회원정보수정</button>
				</div>
			</form>
		</div>
	</div>
</div>
<jsp:include page="/inc/foot.jsp" />
	<!-- 주소 API 스크립트 -->
	<!-- jQuery와 Postcodify를 로딩한다 -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	
	<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
	<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
	
	<script>
		function validate(){
			return true;
		}
	</script>
