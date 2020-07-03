<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include Test</title>
<style> 
	header {
		text-align: center;
	
	}
	
	#wrap{ 
		overflow: hidden; 
	}
	
	#news{
		width: 45%;
		float: left; 
		}
		
	#shopping{
		width: 40%; 
		float: right; 
		}	
</style>
</head>
<body>

	<%@ include file="include/header.jsp" %>
	<div id = "wrap"> 
	<%@ include file="include/news.jsp" %>
	<%@ include file="include/shopping.jsp" %>
	</div>
	<jsp:include page="include/footer.jsp">
		<jsp:param value="cool@gmail.com" name="email"/>
		<jsp:param value="010-3404-6411" name="tel"/>	
	
	</jsp:include>
</body>
</html>