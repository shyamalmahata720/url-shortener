<%@page import="com.jsp.assignment.urlshortener.entity.ShortURL"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="/user/authenticate.jsp"%>
<%@ include file="/css/analytics.jsp"%>
<%@ include file="/util/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Url-Shortener</title>
</head>
<body class="">
	<div class="back-container"><a href="/UrlShortener/user/dashboard.jsp" class="btn back">Back</a></div>
	<div class="table-container">
		<table class="table">
			<tr class="th">
				<th class="">URL</th>
				<th class="">Click Count</th>
				<th class="">Delete</th>
			</tr>
			<% 
				List<ShortURL> urls = (List<ShortURL>) request.getAttribute("urls");
				if(urls != null && !urls.isEmpty()){
					for(ShortURL url : urls){
					%>
						<tr class="tr">
							<td class=""> 
								<a href="<%= "http://localhost:8080/UrlShortener/" + url.getShortURLKey() %>">
									<%= "http://localhost:8080/UrlShortener/" + url.getShortURLKey() %>
								</a>
							</td>
							<td class=""><%= url.getClickCount() %></td>
							<td class=""> 
								<a href="/UrlShortener/delete-url?id=<%=url.getUrlId()%>" class="nav-link link-hover">Delete</a> 
							</td>
						</tr>
					<%
					}
				}
			%>
		</table>
	</div>
</body>
</html>