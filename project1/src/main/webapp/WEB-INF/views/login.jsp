<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CHXX AH' LOGIN</title>
<link rel="stylesheet" href="./css/menu-black.css">
<link rel="stylesheet" href="./css/login.css">
<script type="text/javascript">
//스크립트 영역
let msg = document.getElementById("msg");// 전역변수

function checkID() {
	msg.innerHTML = "<p>" + document.getElementById("id").value + "아이디를 변경했습니다.</p>";
}

function check(){
    let id = document.getElementById("id");
    let msg = document.getElementById("msg");
    if (id.value.length < 4 ) {
		alert("아이디는 4글자 이상 입력하세요.");
		msg.innerHTML = "<p>올바른 아이디를 입력하세요.</p>";
		id.focus();
		return false;
	}
    
    let pw = document.getElementById("pw");
    if (pw.value.length < 4 ) {
		alert("패스워드는 4글자 이상 입력하세요.");
		pw.focus();
		return false;
    }
}
</script>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<div style="height: 70px; width: 100%"></div>
	<hr class="hr">
	<div class="login_form">
		<h1>LOGIN</h1>
		<form action="./login" method="post" onsubmit="return check()">
			<input type="text" name="id" id="id" placeholder="ID"
				required="required" maxlength="20" onchange="checkID()"> <input type="password"
				name="pw" id="pw" placeholder="PW" required="required"
				maxlength="20">
			<button class="login">LOGIN</button>
			<span id="msg"></span>
		</form>
		<div class = "footer">
			<a>아이디 찾기 | </a>
			<a>비밀번호 찾기 | </a>
			<a href="./join">회원가입</a>
		</div>
		
	</div>
</body>
</html>