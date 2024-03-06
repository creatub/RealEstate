<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	.outer{
		width:60%;
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
<div class="container">
	<div class="outer">
		<div id="joinInfoArea">
			<form id="joinForm" action="<%= request.getContextPath() %>/login/joinEnd.jsp"
			method="post" onsubmit="return validate();">
				<h1>회원 가입</h1>
				
				<h4>* 아이디</h4>
				<span class="input_area"><input type="text" maxlength="13" name="id" required></span>
				<button id="idCheck" type="button" class="bt">중복확인</button>
				
				<h4>* 비밀번호</h4>
				<span class="input_area"><input type="password" maxlength="15" name="pw" required></span>
				
				<h4>* 비밀번호 확인</h4>
				<span class="input_area"><input type="password" maxlength="15" name="pw2" required></span>
				<label id="pwdResult"></label>
				
				<h4>* 이름</h4>
				<span class="input_area"><input type="text" maxlength="5" name="name" required></span>
				
				<h4>연락처</h4>
				<span class="input_area"><input type="tel" maxlength="11" name="tel"
										placeholder="(-없이)01012345678"></span>
										
				<h4>이메일</h4>
				<span class="input_area"><input type="email" name="email"></span>
				
				<h4>우편번호</h4>
				<span class="input_area"><input type="text" name="addr1" class="postcodify_postcode5"></span>
				<button type="button" id="postcodify_search_button" class="bt">검색</button>
				<h4>도로명주소</h4>
				<span class="input_area"><input type="text" name="addr2" class="postcodify_address"></span>
				<h4>상세주소</h4>
				<span class="input_area"><input type="text" name="addr3" class="postcodify_details"></span>

				<div class="btnArea">
					<button id="joinBtn" class="bt" style="width : 300px">가입하기</button>
				</div>
			</form>
		</div>
	</div>
</div>
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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function() {
    $("#idCheck").click(function() {
        var idValue = $("input[name='id']").val(); // 아이디 입력란의 값 가져오기

        $.ajax({
            url: "<%= request.getContextPath() %>/login/idDuplicateCheck.jsp", // 중복 체크 JSP 파일의 경로
            method: "POST", // POST 방식으로 요청
            data: { id: idValue }, // 전송할 데이터 (아이디)
            success: function(response) {
                // 서버에서의 응답 처리
                if(response === "사용 가능한 아이디입니다.") {
                    // 중복 확인이 성공했을 때 가입하기 버튼 활성화
                    $("#joinBtn").prop("disabled", false);
                } else {
                    // 중복 확인이 실패했을 때 가입하기 버튼 비활성화
                    $("#joinBtn").prop("disabled", true);
                }
                // 예를 들어, 중복이면 "사용 중인 아이디입니다" 등의 메시지를 표시하거나 처리할 수 있습니다.
                alert(response); // 서버에서의 응답 메시지를 알림창으로 표시
            },
            error: function(xhr, status, error) {
                // 요청 실패 시 처리
                console.error("중복 체크 요청 실패:", error);
            }
        });
    });

});
</script>


<jsp:include page="/inc/foot.jsp" />