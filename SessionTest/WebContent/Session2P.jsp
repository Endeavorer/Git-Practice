<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	
	if(userid.equals("apple") && pwd.equals("1111")){
		session.setAttribute("userid", userid);
		response.sendRedirect("Session2.jsp");
	}else{
%>
	<script>
		alert("아이디 또는 패스워드를 확인해 주세요.")
		location.href="Session2.jsp"
	</script>
<%
	}	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키</title>
</head>
<body>
<%
	//response.sendRedirect("Cookie2P_1.jsp");  
%>
</body>
</html>
