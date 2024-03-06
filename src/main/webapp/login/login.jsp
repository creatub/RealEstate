<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//컨텍스트명 구하기 
String ctx = request.getContextPath();
//쿠키 꺼내기
boolean saveId=false;
String uid = "";
Cookie[] cks = request.getCookies();
if(cks!=null){
	for(Cookie ck:cks){
		String key = ck.getName();
		if(key.equals("uid")){
			saveId=true;
			uid = ck.getValue();
			break;
		}
	}
}
%>
<script>
  function closeLoginPopup() {
    // ID 입력 필드 비우기
    document.getElementById("id").value = "";
    // Password 입력 필드 비우기
    document.getElementById("pw").value = "";
    // 아이디 저장 체크박스 체크 해제
    document.getElementById("saveId").checked = false;
    // 팝업 닫기
    document.getElementById('loginPopup').style.display = 'none';
	document.getElementById('overlay').style.display = 'none';
	
  }
</script>
<!-- 로그인 팝업 -->
<div id="loginPopup" class="popup">
  <h2>Login</h2>
  <!-- 로그인 폼 -->
  <form name="loginF" method="post" action="<%=ctx %>/login/loginEnd.jsp">
    <input
      type="text"
      id="id"
      name="id"
      <%if(uid.equals("")){ %>
      	placeholder="ID"
      <%}else{%>
       value="<%=uid%>"
      <%} %>
      required
    />

    <input
      type="password"
      id="pw"
      name="pw"
      placeholder="Password"
      required
    />

    <label for="saveId" style="text-align:left;display: inline-block;margin-right: 50px;">
		<input type="checkbox" name="saveId" id="saveId" 
		<%if(saveId){ %>
			checked
		<% }//if----------%>
		style="width:10%">아이디 저장
	</label>  <a href="login/join.jsp" style="margin-left: 30px;display: inline-block">회원가입</a>

    <div class="button-container">
   
      <button type="submit">로그인</button>
      <button type="button" onclick="closeLoginPopup()">닫기</button>
    </div>
  </form>
</div>

<!-- 배경 오버레이 -->
<div id="overlay" class="overlay"></div>

