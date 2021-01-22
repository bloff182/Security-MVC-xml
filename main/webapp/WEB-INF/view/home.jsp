<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>MVC Security Home Page</title>
</head>
<body>
	<h2>MVC Security Home Page</h2>
	<hr>
	
	<!-- wyswietlamy uzytkownika i jego role -->
	<p>
		User:<security:authentication property="principal.username"/>
		<br>
		Role:<security:authentication property="principal.authorities"/>
	</p>
	<hr>
		Wazne informacje:
	
	<!-- dodajemy link dla liderow -->
	
	<!-- wyswietlanie tresci strony w oparciu o role dla Managera-->
	<security:authorize access="hasRole('MANAGER')">
	
		<!-- link -->
		<p>	
			<a href="${pageContext.request.contextPath}/leaders">LeaderShip Meeting</a>
		</p>
		
	</security:authorize>
	
	<!-- wyswietlanie tresci strony w oparciu o role dla Admina-->
	<security:authorize access="hasRole('ADMIN')">
		
		<!-- link -->
		<p>	
			<a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>
		</p>
		
	</security:authorize>
	
	<hr>
	<p>
		Welcome to my home Page!
	</p>
	
	<!-- add LogOut button -->
	<form:form action = "${pageContext.request.contextPath}/logout" method = "POST">
		<button type ="submit" name="">LogOut</button>
		<!-- 
		<input type ="submit" value = "LogOut" />
		 -->
	</form:form>
	
</body>
</html>