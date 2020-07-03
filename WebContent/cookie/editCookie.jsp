<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		Cookie cookie = new Cookie("uid", "hot"); 
		cookie.setPath("/web/");
		
		
		response.addCookie(cookie);
	%>
	
	<a href = "viewCookie.jsp">쿠키값 수정하기</a>

</body>
</html>
