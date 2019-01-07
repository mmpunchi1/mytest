<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>urlTest2.jsp</title>
</head>
<body>
	<h1>jstl - url</h1>
	<a href='<c:url value="/sandbox/jstlTest/foreachTest.jsp"></c:url>'>
		foreachTest.jsp로 이동</a>
	<br>
	<a href='<c:url value="/sandbox/jstlTest/date.jsp?address=논현동"></c:url>'>
		date.jsp로 이동</a>
	<br>
	<img src="<c:url value='/images/herb.JPG'/>"><br>

	<img src="${pageContext.request.contextPath }/images/notice2.JPG"><br>
	<h1>컨텍스트 패스</h1>
	<p>${pageContext.request.contextPath }</p>
		
</body>
</html>



