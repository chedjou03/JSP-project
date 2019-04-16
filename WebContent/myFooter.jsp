<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"  %>   
    <div id = "myFooterContainer">
    	<hr>
    	<c:set var = "currentDate" value = "<%= new Date() %>" />
		<p align = "center"> Last Updated:${currentDate}  </p>
		${cookie.firstName.value} 
    </div>
    
