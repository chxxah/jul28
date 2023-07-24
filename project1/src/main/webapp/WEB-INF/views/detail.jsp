<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/menu-black.css">
<link rel="stylesheet" href="./css/detail.css">
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="./img/favicon.ico" type="image/x-icon">
<script type="text/javascript">
	function edit() {
		if (confirm("수정하시겠습니까?")) {
			location.href = "./edit?bno=${dto.bno }"
		}
	}

	function del() {
		let chk = confirm("삭제하시겠습니까?");
		alert(chk);
		if (chk) {
			location.href = "./delete?bno=${dto.bno }";
		}
	}
</script>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<div style="height: 70px; width: 100%"></div>
	<hr style="color: #E0E0E0;">
	<div class="info_box">
		<div class="board_logo">
			<img alt="" src="./img/board_logo.png"
				style="align-content: center; align-items: center; width: 70%;">
		</div>
	</div>
	<div class="detail-content">
		<div class="title">${dto.bno }
			/ ${dto.btitle }
			<c:if test="${sessionScope.mid ne null && m_id eq dto.m_id}">
				<img alt="" src="./img/edit.png" style="width: 7%;" onclick="edit()">
				<img alt="" src="./img/del.png" style="width: 7%;" onclick="del()">
			</c:if>
		</div>
		<div class="namebar">
			<div class="name">${dto.m_name }님</div>
			<div class="like">${dto.blike }</div>
			<div class="date">${dto.bdate }</div>
			<div class="ip">${dto.bip }</div>
		</div>
		<div class="content">${dto.bcontent }</div>
	</div>

</body>
</html>