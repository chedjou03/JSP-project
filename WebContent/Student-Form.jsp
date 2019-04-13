<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="myCssFiles/myCss.css">
		<title>Student form</title>
	</head>
	
	<body>
		<jsp:include page = "myHeader.jsp" />
		<div align = "center">
			<h2>STUDENT REGISTRATION FORM</h2>
			<form action = "student-response.jsp">
				First Name: <input type = "text" name = "firstName"/>
				<br><br>
				Last Name: <input type = "text" name = "lastName"/>
				<br><br>
				Country: <select name = "country">
								<option></option>
								<option>France</option>
								<option>Cameroon</option>
								<option>USA</option>
								<option>Canada</option>
								<option>Italy</option>
						 </select>
				<br><br>
				Favorite Programming Language:
				<input type = "radio" name="favoriteLanguage"  value = "Java" />Java
				<input type = "radio" name="favoriteLanguage"  value = "PHP" />PHP
				<input type = "radio" name="favoriteLanguage"  value = "C#" />C#
				<input type = "radio" name="favoriteLanguage"  value = "C++" />C++
				<br><br>
				Favorite JavaScript Library:
				<input type = "checkbox" name="favoriteJavaScriptLibrary"  value = "Jquery" />Jquery
				<input type = "checkbox" name="favoriteJavaScriptLibrary"  value = "KnockOut" />KnockOut
				<input type = "checkbox" name="favoriteJavaScriptLibrary"  value = "Bootstrap" />Bootstrap
				<input type = "checkbox" name="favoriteJavaScriptLibrary"  value = "React" />React
				<br><br>
				<input type = "submit" value = "submit"/>
			</form>
		</div>
		<jsp:include page = "myFooter.jsp" />
	</body>
</html>