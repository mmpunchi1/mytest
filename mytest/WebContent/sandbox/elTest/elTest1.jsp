<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>elTest1.jsp</title>
</head>
<body>
<%
	//표현언어 -EL : 기존의 jsp 표현식을 대체하는 효과
	//el 표현식에는 연산자 사용가능, 내장객체 지원함
	//null에 관대하고 형변환도 자동으로 해줌


%>
<h1>표현언어 (Expression Language)- EL</h1>
<p>\${2+5 } => ${2+5 }</p>
<p>\${10%3 } => ${10%3 }</p>
<p>\${20>7 } => ${20>7 }</p>
<p>\${header.host } => ${header.host }</p>
<p>\${header["user-agent"] } => ${header["user-agent"] }</p>

<h1>기존 방식</h1>
<%
	String host=request.getHeader("host");
	String userAgent=request.getHeader("user-agent");
	
%>
<p>host: <%=host %></p>
<p>user-agent: <%=userAgent %></p>
</body>
</html>