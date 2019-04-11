<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp declaration example</title>
</head>
<body>
	<%!
		String makeItUpper(String str){
			return str.toUpperCase();
		}
	%>
	hello chedjou to upper : <%= makeItUpper("hello Chedjou") %>
</body>
</html>