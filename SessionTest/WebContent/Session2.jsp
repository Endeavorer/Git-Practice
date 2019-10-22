<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userid = ""; // 아이디 가 없음
	String cook = request.getHeader("Cookie");  // 호출한 클라이언트에 쿠키정보 읽어옴     단, 현재 사이트 에서 
	if(cook != null) {
		Cookie[] cookies = request.getCookies();   // 쿠키를 가져와 배열로 가져옴
		for(int i=0; i<cookies.length; i++){
			if(cookies[i].getName().equals("userid")){
				userid = cookies[i].getValue(); // apple
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script src="login.js"></script>
</head>
<%
	if(!userid.equals("")){  // userid 가 아무것도 없으면
%>
<p><%=userid%>님 환영합니다.<p>
<p>아이디 : <%=userid%></p>
<p><a href="Session2_logout.jsp">[로그아웃]</a></p>     
<%
	}else{
%>
<form name="loginForm" method="post" action="Session2P.jsp">
	<p><label>아이디 : <input type="text" name="userid"></label></p>
	<p><label>패스워드 : <input type="password" name="pwd"></label></p>
	<p><input type="button" value="로그인" onclick="sendit()"></p>
</form>
<%
	}
%>
</body>
</html>