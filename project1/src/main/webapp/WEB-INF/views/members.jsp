<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CHXX AH' LIST</title>
<link rel="icon" href="./img/favicon.ico" type="image/x-icon">
</head>
<body>
<h1>회원게시판</h1>

<c:forEach items="${list }" var="m">
	${m.no } / ${m.id } / ${m.name } / ${m.birth } / ${m.mbti } /
	
	<c:choose>
		<c:when test="${m.gender } = 0">여자</c:when>
		<c:otherwise>남자</c:otherwise>
	</c:choose>
	
	<br>

</c:forEach>

</body>
</html>