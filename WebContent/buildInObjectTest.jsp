<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test Build in object</title>
</head>
<body>
	Request User agent: <%= request.getHeader("User-Agent") %>
	<br>
	Request Language: <%= request.getLocale() %>
</body>
</html>