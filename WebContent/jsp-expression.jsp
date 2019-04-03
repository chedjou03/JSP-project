<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp-expression</title>
</head>
<body>
		<h3>Hello world Java.<%= "Chedjou Simplice".toUpperCase() %></h3>
		The time on the server is <%= new  java.util.Date() %>
		<br>
		25 * 5 equal <%= 25*5 %>
		<br>
		is 50 less that 70 ? <%= 50<70 %>
</body>
</html>