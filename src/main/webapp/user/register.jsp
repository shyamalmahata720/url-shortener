<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="/css/register.jsp" %>
<%@ include file="/util/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Url-Shortener</title>
</head>

<body class="">
	<div class="register-container">
	<div class="register">
		<h1>Register</h1>
		<form action="/UrlShortener/register" method="post" class="form">
			<input type="text" required="required" name="username" placeholder="Enter Name:" class="input"> 
			<input type="email" required="required" name="email" placeholder="Enter Email:" class="input"> 
			<input type="password" required="required" name="password" placeholder="Enter Password:" class="input"> 
			<input type="password" required="required" name="confirmPassword" placeholder="Confirm Password:" class="input"> 
			<input type="submit" value="Confirm" class="btn">
		</form>
	</div>
	</div>
</body>
</html>