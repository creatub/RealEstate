//로그인 팝업창
function openLoginPopup() {
  document.getElementById('loginPopup').style.display = 'block';
  document.getElementById('overlay').style.display = 'block';
}

function closeLoginPopup() {
	// ID 입력 필드 비우기
	document.getElementById("id").value = "";
	// Password 입력 필드 비우기
	document.getElementById("pw").value = "";
	// 아이디 저장 체크박스 체크 해제
	document.getElementById("saveId").checked = false;
	document.getElementById('loginPopup').style.display = 'none';
	document.getElementById('overlay').style.display = 'none';
	
}

