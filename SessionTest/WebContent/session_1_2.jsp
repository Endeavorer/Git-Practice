<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.invalidate();
	//session.removeAttribute("userid");  //userid 세션만 날려줌      invalidate는 모든 세션을 날려줌
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션값 삭제</title>
</head>
<body>
	<script>
		location.href="Session1_1.jsp"
	</script>
</body>
</html>