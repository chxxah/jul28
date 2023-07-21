<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav>
	<div class="header">
		<div class="head_left">
			<img alt="" src="./img/chxx.png"> <a href='./index'>CHXX AH</a>
		</div>
		<div class="head_center">
			<ul>
				<li onclick="link('board')"><span class="list1">BOARD</span></li>
				<li onclick="link('ourstory')"><span class="list2">OUR
						STORY</span></li>
				<li onclick="link('notice')"><span class="list3">NOTICE</span></li>
				<li onclick="link('contact')"><span class="list4">CONTACT</span></li>
			</ul>
		</div>

		<div class="head_right">
			<div class=user>${sessionScope.mid }｜</div>
			<div class=box>LOGOUT</div>
		</div>

		<%-- <c:choose>
			<c:when test="${sessionScope.mname eq null}">
				<li onclick="link('login')"><span class="list6">LOGIN</span></li>
			</c:when>
			<c:otherwise>
				<li onclick="link('myInfo')"><span class="list5">${sessionScope.mname }(${sessionScope.mid })님
						반갑습니다</span></li>
				<li onclick="link('logout')"><span class="list7">LOGOUT</span></li>
			</c:otherwise>
		</c:choose> --%>

	</div>
</nav>
<script>
	function link(url) {
		location.href = "./" + url;
	}
</script>










