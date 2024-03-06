<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="/util/headercss.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Url-Shortener</title>
</head>
<body class="">
	<header>
		<nav class="">
			<a href="/UrlShortener/user/dashboard.jsp" class="logo">URL-Shortener</a>

			<%
			if (session.getAttribute("user") == null) {
			%>
			<div class="nav-links">
				<a href="/UrlShortener/user/login.jsp" class="nav-link">Login</a> 
				<a href="/UrlShortener/user/register.jsp" class="nav-link">Register</a>
			</div>
			<%
			} else {
			%>
			<div class="nav-links">
				<a href="/UrlShortener/get-analytics" class="nav-link">Analytics</a>
				<a href="/UrlShortener/logout" class="nav-link">Logout</a>
			</div>
			<%
			}
			%>
		</nav>
	</header>
</body>
</html>