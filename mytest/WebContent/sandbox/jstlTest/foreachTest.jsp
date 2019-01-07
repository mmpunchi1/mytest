<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>foreachTest.jsp</title>
</head>
<body>
	<h1>jstl- foreach</h1>
	<h2>1~100까지 짝수의 합</h2>
	<c:set var="sum" value="0"></c:set>
	<c:forEach var="i" begin="1" end="100">
		<c:if test="${i%2==0 }">
			<c:set var="sum" value="${sum+i }"></c:set>
		</c:if>
	</c:forEach>
	
	<p>${sum }</p>
	<c:set var="sum" value="0"></c:set>
	<c:forEach var="i" begin="2" end="100" step="2">
			<c:set var="sum" value="${sum+i }"></c:set>
	</c:forEach>
	
	<p>${sum }</p>
	
	<h1>foreach -확장 for기능</h1>
	<c:forEach var="head" items="${headerValues }">
		<p>key : ${head.key }</p>	
		value : 
		<c:forEach var="val" items="${head.value }">
			${val}<br>
		</c:forEach>	
	</c:forEach>
	
</body>
</html>