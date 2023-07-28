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
	<hr class="hr">
	<div class="info_box">
		<div class="board_logo">
			<img alt="" src="./img/board_logo.png">
		</div>
		<div class="namebar">
			<div class="name">${dto.m_name } (${dto.m_id })</div>
			<div class="etc">
				<div class="date">작성일 : ${dto.bdate }</div>
				<div class="ip">IP : ${dto.bip }</div>
				<div class="like"><img alt="" src="./img/view.png">조회수 : ${dto.blike }</div>
			</div>
		</div>
	</div>
	<hr class="hr">
	<div class="detail-content">
		<div class="title">${dto.bno }&nbsp;&nbsp; ${dto.btitle }
			<c:if test="${sessionScope.mid ne null && m_id eq dto.m_id}">
				<img alt="" src="./img/edit.png" style="width: 7%;" onclick="edit()">
				<img alt="" src="./img/del.png" style="width: 7%;" onclick="del()">
			</c:if>
		</div>
		<div class=""></div>
		<div class="content">${dto.bcontent }</div>
	</div>

</body>
</html>