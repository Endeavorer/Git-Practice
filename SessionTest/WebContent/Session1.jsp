<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.setAttribute("userid","apple"); 	// 이것은 정보 저장한게 아닌 1111이라는 곳에 apple이라고 저장() 
	session.setAttribute("pwd","1111");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
	<a href="Session1_1.jsp">페이지 이동</a>
</body>
</html>