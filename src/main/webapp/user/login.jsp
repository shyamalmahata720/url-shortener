<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="/util/header.jsp"%>
<%@ include file="/css/login.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Url-Shortener</title>
</head>
<body class="">
	<div class="login-container">
		<div class="login">
			<h1>Login</h1>
			<form action="/UrlShortener/login" method="post" class="form">
				<input type="email" required="required" name="email"
					placeholder="Enter Email:" class="input"> <input
					type="password" required="required" name="password"
					placeholder="Enter Password:" class="input"> <input
					type="submit" value="Confirm" class="btn">
			</form>
		</div>
	</div>
</body>
</html>