<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Portail d'etudiant</h1>
<%
	String language = "Java";
	Cookie[] mescookies = request.getCookies();
	if (mescookies!=null){
		for (Cookie tempCookie : mescookies){
			if ("languageCookie".equals(tempCookie.getName())){
				language = tempCookie.getValue();
				break;
			}
		}
	}
%>
<h3>Nouveau tutoriel pour: <%=language%></h3>
<p>Nizar est le tutoriel pour Java</p>
<p>Roula est le tutoriel pour JavaScript</p>
<p>Khalid est le tutoriel pour C#</p>
<h3>Nouveau livre de: <%=language%></h3>
<p>Nizar est le tutoriel pour Java</p>
<p>Roula est le tutoriel pour JavaScript</p>
<p>Khalid est le tutoriel pour C#</p>
<hr>
<a href="FormulaireCookies.html">Personnalisé cette page</a>
</body>
</html>