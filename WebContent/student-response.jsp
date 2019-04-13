<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="myCssFiles/myCss.css">
		<title>Student Confirmation</title>
	</head>
	<body>
		<jsp:include page = "myHeader.jsp" />
		<div align = "center">
			<h1>Student Confirmation</h1> 
			<b>Student:</b> ${param.firstName} ${param.lastName} 
			<br>
			<b>From:</b> ${param.country}
			<br>
			<b>Favorite Language:</b> ${param.favoriteLanguage}
			<br>
			<b>Favorite Js Library:</b>
			<ul>
				<% 
					String[] favJSLibraries = request.getParameterValues("favoriteJavaScriptLibrary"); 
					for(String tempLibrary : favJSLibraries)
					{
						out.println("<li>" + tempLibrary + "</li>");
					}
				%>
			</ul>
			
		</div>
		<jsp:include page = "myFooter.jsp" />
	</body>
</html>