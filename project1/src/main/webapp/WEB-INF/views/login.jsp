<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CHXX AH; LOGIN</title>
<link rel="stylesheet" href="./css/menu-black.css">
</head>
<body>
	<%@ include file="menu.jsp"%>
	<div style="height: 100px; width: 100%"></div>
	<div class="login_form">
		<form action="./login" method="post">
			<input type="text" name="id" id="id" placeholder="ID"
				required="required" maxlength="20"> <input type="password"
				name="pw" id="pw" placeholder="PW" required="required"
				maxlength="20">
			<button class="login">LOGIN</button>
		</form>
	</div>

</body>
</html>