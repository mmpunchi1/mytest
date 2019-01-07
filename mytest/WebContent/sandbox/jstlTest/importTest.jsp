<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="date.jsp" var="dateUrl"></c:import>
	<h1>jstl=import</h1>
	<p>include액션 태그와 마찬가지로 실행결과를  include함</p>
	${dateUrl}
	
	<h2>직접 import</h2>
	<c:import url="date.jsp"></c:import>
	<h2>import - param 이용</h2>
	<c:import url="date.jsp">
		<c:param name="address" value="서초동"></c:param>
	</c:import>
</body>
</html>