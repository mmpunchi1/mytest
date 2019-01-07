<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ifTest.jsp</title>
</head>
<body>
	<!-- test는 조건식 var은 변수명, value는 변수값 -->
	<h1>jstl- if,choose~when~oterwise</h1>
	<c:set var="country" value="canada"></c:set>
	<c:if test="${!empty country }">
		<p>${country }에서 살아요</p>
	</c:if>
	
	<c:if test="${empty country }">
		<p>변수값이 없습니다.</p>
	</c:if>
	
	<c:choose>
		<c:when test="${country=='korea' }">
			<p>한국(${country }에서 살아요)</p>
		</c:when>
		<c:when test="${country=='canada' }">
			<p>캐나다(${country }에서 살아요)</p>
		</c:when>
		<c:otherwise>
			<p>그 이외의 나라에서 살아요</p>
		</c:otherwise>
		
	</c:choose>
	
	
</body>
</html>