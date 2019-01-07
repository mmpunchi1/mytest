<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstlTest1.jsp</title>
</head>
<body>
	<h1>jstl 연습 </h1>
	<c:set var="browser" value="${header['user-agent']}"></c:set>
	<h1>el 표현식 이용 - 출력</h1>
	<p>브라우저 정보: ${browser}</p>
	
	<h1>jstl-out이용</h1>
	<c:out value="${browser }"></c:out>
	
	<h1>jstl-remove 이용 = 값 제거</h1>
	<c:remove var="browser"/>
	
	<h1>제거 후 출력</h1>
	<p>브라우저 정보 : ${browser }</p>
	
</body>
</html>