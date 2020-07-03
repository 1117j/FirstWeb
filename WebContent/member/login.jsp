<%@page import="util.CookieBox"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
	String uid = request.getParameter("uid");
	String pw = request.getParameter("pw");
	String chk = request.getParameter("remember"); 

	if(chk!= null){
		response.addCookie(CookieBox.createCookie("uid", uid, request.getContextPath(), 60*60*24*365)); 
	}
	
%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리</title>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/default.css">

<style>
</style>
</head>
<body>

	<%@ include file="/include/header.jsp"%>

	<div>
		<h1>로그인</h1>
		
		<hr>

		<table>
			<tr>
				<td>ID</td>
				<td> <input type = "text"> 아이디를 입력하세요. </td>
			</tr>
			<tr>
				<td>PW</td>
				<td> <input type ="password"> 비밀번호를 입력하세요. </td>
			</tr>
			<tr>
				<td>이름</td>
				<td> <input type= "text"> 이름을 입력하세요.  
			</tr>
		</table>



	</div>

	<%@ include file="/include/footer.jsp"%>
</body>
</html>




