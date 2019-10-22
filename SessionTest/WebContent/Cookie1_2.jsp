<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cook = request.getHeader("Cookie");   //쿠키가 있는지 확인
	if(cook != null){
		Cookie[] cookies = request.getCookies();  //쿠키값을 읽어와서 배열에 담아줌      
		for(int i=0; i<cookies.length; i++){
			if(cookies[i].getName().equals("Userid")){
				Cookie cookie = new Cookie("Userid","banana");
				//쿠키값이 존재한다면 해당이름으로 새로운 쿠키를 만들경우 변경이 됩니다. 
				response.addCookie(cookie);
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키</title>
</head>
<body>
	<p><a href="Cookie1_1.jsp">변경된 쿠키 확인하러가기</a></p>
	
</body>
</html>