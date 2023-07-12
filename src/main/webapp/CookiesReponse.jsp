<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String languagefavori = request.getParameter("monlanguage");
	//out.println(languagefavori);
	
	Cookie cookie = new Cookie("languageCookie",languagefavori);
	cookie.setMaxAge(60*60*24*365);//par année
	
	response.addCookie(cookie);
%>
<p>Votre language préféré est: <%= languagefavori %></p>
<a href="Homepage.jsp">Retour à la page d'accueil </a>
</body>
</html>