<html>
<head>
<meta charset="ISO-8859-1">
<meta name="description" content="Personalized Response">
<title>Confirmation Page</title>
<style type="text/css">
body {
	background-color: lightgrey;
	text-align: left;
}
</style>
</head>

	<%
	// read form data
	String favlang = request.getParameter("favoriteLanguage");
	// create cookies
	Cookie theCookie = new Cookie("myapp.favoriteLanguage", favlang);
	// set the life span of the cookies
	theCookie.setMaxAge(60 * 60 * 24 * 365);
	// send the cookie to the browser
	response.addCookie(theCookie);
	%>
<body>
	Thanks! We have set your favorite language to:
	<%=request.getParameter("favoriteLanguage")%>
	<a href="cookie-hompage.jsp">Return to the Homepage</a>
</body>
</html>