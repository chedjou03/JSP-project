<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"  %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
  		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="MyCss/myCss.css">
		<link rel="stylesheet" type="text/css" href="Css/bootstrap.min.css">
		<script  src="Js/jquery-3.3.1.min.js"></script>
   		<script  src="Js/knockout-3.4.2.js"></script>
		<title>Student form</title>
	</head>
	
	<body>
		<jsp:include page = "myHeader.jsp" />
		<c:set var = "theLocal" value = "${ not empty param.theLocal ? param.theLocal : pageContext.request.local}" scope = "session"/>
		<fmt:setLocale value = "${theLocal}"/>
		<fmt:setBundle basename="com.JspProject.jspBeans.I18N.resources.myLabels"/>
		<div align = "center">
		<% 	List<String> myCountries = new ArrayList<String>(Arrays.asList("","France","Cameroon","USA","Canada","Italy","Germany")); 
		   	//String[] myCountries = {"France","Cameroon","USA","Canada","Italy","Germany"};
			pageContext.setAttribute("countries", myCountries);
			String test = "France";
		%>	
			<h2><span class="badge badge-secondary"><fmt:message key = "label.studentRegistrationForm"/></span></h2>
			<form  class="form-horizontal" action = "student-response.jsp">
				<% session.setAttribute("userName", "Simplice"); %>
				<div class="form-group col-4">
					<label class="control-label" ><fmt:message key = "label.firstName"/>:</label> 
					<input type = "text" name = "firstName" class="form-control" placeholder="Enter First Name"/>	
				</div>
				
				<div class="form-group col-4">
					<fmt:message key = "label.lastName"/>: 
					<input type = "text" name = "lastName" class="form-control"/>
			    </div>
				
				<div class="form-group col-3">
					<fmt:message key = "label.country"/>: <select name = "country" class="form-control">
								<c:forEach var = "tempCountry" items = "${countries}">
									<option>${tempCountry}</option>
								</c:forEach>
						 </select>
				</div>
				
				<div class="form-group">
					<fmt:message key = "label.favoriteProgrammingLanguage"/>
					<input type = "radio" name="favoriteLanguage"  value = "Java" />Java
					<input type = "radio" name="favoriteLanguage"  value = "PHP"  />PHP
					<input type = "radio" name="favoriteLanguage"  value = "C#"  />C#
					<input type = "radio" name="favoriteLanguage"  value = "C++"  />C++
				</div>
				
				<div class="form-group">
					<fmt:message key = "label.favoriteJavaScriptLibrary"/>
					<input type = "checkbox" name="favoriteJavaScriptLibrary"  value = "Jquery" />Jquery
					<input type = "checkbox" name="favoriteJavaScriptLibrary"  value = "KnockOut" />KnockOut
					<input type = "checkbox" name="favoriteJavaScriptLibrary"  value = "Bootstrap" />Bootstrap
					<input type = "checkbox" name="favoriteJavaScriptLibrary"  value = "React" />React
				</div>
				
				<br><br>
				<input type = "submit" value = "submit" class="btn btn-default" />
			</form>
			<form action="Student-Form.jsp">
				Add new Items: <input type = "text" name = "theItem" />
				<br>
				<input type = "submit" value = "add" />
			</form>
				Item entered : <%= request.getParameter("theItem") %>
				<br>
				<%
					List<String> items = (List<String>) session.getAttribute("myToDoList");
					if(items == null)
					{
						items = new ArrayList<String>();
						session.setAttribute("myToDoList", items);
					}
					String theItem = request.getParameter("theItem");
					if(theItem != null && !((theItem.trim()).isEmpty())){
						items.add(theItem);
						response.sendRedirect("Student-Form.jsp"); 
					}
				%>
				<b>To Do List:</b>
				<ol id = "toDoListId">
					<%
						for(String anItem : items){
							out.println("<li>" + anItem + "</li>");
						}		
					%>
				</ol>
		</div>
		<jsp:include page = "myFooter.jsp" />
	</body>
</html>