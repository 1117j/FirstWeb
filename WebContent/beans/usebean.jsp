<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- id="식별자 이름"  class="객체생성" scope="default는 페이지라 쓸필요 없음"-->
    
<jsp:useBean id ="memberInfo" class="model.LoginInfo" scope="session"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		memberInfo.setUid("hot"); 
		memberInfo.setName("뜨거"); 
	%>

	<h1><%= memberInfo %> </h1>
</body>
</html>