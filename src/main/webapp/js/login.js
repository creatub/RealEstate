//로그인 팝업창
function openLoginPopup() {
  document.getElementById('loginPopup').style.display = 'block';
  document.getElementById('overlay').style.display = 'block';
}

function closeLoginPopup() {
  document.getElementById('loginPopup').style.display = 'none';
  document.getElementById('overlay').style.display = 'none';
}