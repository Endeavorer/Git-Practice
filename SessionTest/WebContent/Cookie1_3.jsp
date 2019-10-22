<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cook = request.getHeader("Cookie");   //쿠키가 있는지 확인
	if(cook != null){
		Cookie[] cookies = request.getCookies();  //쿠키값을 읽어와서 배열에 담아줌      
		for(int i=0; i<cookies.length; i++){
			if(cookies[i].getName().equals("Userid")){
				Cookie cookie = new Cookie("Userid","");
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>쿠키가 삭제 되었습니다</p>
	<p><a href="Cookie1_1.jsp">삭제된 쿠키 확인하러가기</a></p>
</body>
</html>