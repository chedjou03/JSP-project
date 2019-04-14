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
			<ul id = "favJsLibraryId">
				<% 
					String[] favJSLibraries = request.getParameterValues("favoriteJavaScriptLibrary"); 
					if(favJSLibraries != null && favJSLibraries.length > 0)
					{
						for(String tempLibrary : favJSLibraries)
						{
							out.println("<li>" + tempLibrary + "</li>");
						}
					}
				%>
			</ul>
			<%
				String favLanguage = request.getParameter("favoriteLanguage");
				String firstName = request.getParameter("firstName");
				String lastName = request.getParameter("lastName");
				Cookie theFavLangCookie = new Cookie("myJSPapp.favoriteLanguage",favLanguage);
				Cookie theFirstNameCookie = new Cookie("myJSPapp.firstName",firstName);
				Cookie theLastNameCookie = new Cookie("myJSPapp.lastName",lastName);
				theFavLangCookie.setMaxAge(60*60*24*365);
				theFirstNameCookie.setMaxAge(60*60*24*365);
				theLastNameCookie.setMaxAge(60*60*24*365);
				response.addCookie(theFavLangCookie);
				response.addCookie(theFirstNameCookie);
				response.addCookie(theLastNameCookie);
			%>
		</div>
		<jsp:include page = "myFooter.jsp" />
	</body>
</html>