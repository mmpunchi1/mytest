<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="javax.xml.crypto.Data"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>date.jsp</title>
</head>
<body>
	<%
		Date d= new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String str=sdf.format(d);
	%>
	<hr>
	<p>현재 날짜 : <%=str %></p>
	
	<h3>import-파라미터값</h3>
	${param.address }
</body>
</html>