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
		color : violet; 
		font-size: 40px; 
	
	}
	
	#wrap{ 
		overflow: hidden; 
	}
	
	#news{
		width: 40%;
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
	<div id = "wrap"> </div>
	<%@ include file="include/news.jsp" %>
	<%@ include file="include/shopping.jsp" %>

</body>
</html>