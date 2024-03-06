<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/user/authenticate.jsp" %>
<%@ include file="/css/dashboard.jsp" %>
<%@ include file="/util/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Url-Shortener</title>
</head>
<body class="">
	<div class="container">
			<div class="form-container">
			<% 
				String shortURL = (String) request.getAttribute("shortURL");
				if(shortURL != null){
					%>
					<p class="para"> Your Short URL Here</p>
					<form action="/UrlShortener/user/dashboard.jsp" method="post" class="form">
						<p class="short-url"><%= shortURL %></p>
						<input type="submit" value="Back" class="btn">
					</form>
					<%
				}else {
					%>
					<p class="para">Get Your Short URL</p>
					<form action="/UrlShortener/shorten-url" method="post" class="form">
						<input type="text" required="required" name="url" placeholder="Paste your URL here: " class="input">
						<input type="submit" value="Confirm" class="btn">
					</form>
					<%
				}
			%> 
			</div>
		
	</div>
</body>
</html>