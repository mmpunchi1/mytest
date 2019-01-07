<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>formatTest.jsp</title>
</head>
<body>
<h1>fmt- formatNumber, formatDate</h1>
<p>12345.678</p>
<c:set var="num" value="12345.678"></c:set>
<p>
	number: <fmt:formatNumber value="${num }" type="number"></fmt:formatNumber>
</p>
<p>
	currency: <fmt:formatNumber value="${num }" type="currency"></fmt:formatNumber>
</p>
<p>
	currency: <fmt:formatNumber value="${num }" type="currency" currencySymbol="$"></fmt:formatNumber>
</p>
<p>
	percent: <fmt:formatNumber value="${num }" type="percent"></fmt:formatNumber>
</p>
<p>
	.0 : <fmt:formatNumber value="${num }" pattern=".0"></fmt:formatNumber>
</p>
<p>
	#,### : <fmt:formatNumber value="${num }" pattern="#,###"></fmt:formatNumber>
</p>
<h2>formatDate</h2>
<c:set var="now" value="<%=new Date() %>"></c:set>
<p>현재일자 now: ${now }</p>
<p>time : <fmt:formatDate value="${now }" type="time"/></p>
<p>date : <fmt:formatDate value="${now }" type="date"/></p>
<p>both : <fmt:formatDate value="${now }" type="both"/></p>
<p>yyyy-MM-dd : <fmt:formatDate value="${now }" pattern="yyyy-MM-dd"/></p>
<p>yyyy-MM-dd HH:mm:ss - <fmt:formatDate value="${now }" pattern="yyyy-MM-dd HH:mm:ss"/></p>
<p>default : <fmt:formatDate value="${now }" dateStyle="default"/></p>
<p>short : <fmt:formatDate value="${now }" dateStyle="short"/></p>
<p>medium : <fmt:formatDate value="${now }" dateStyle="medium"/></p>
<p>long : <fmt:formatDate value="${now }" dateStyle="long"/></p>
<p>full : <fmt:formatDate value="${now }" dateStyle="full"/></p>


</body>
</html>