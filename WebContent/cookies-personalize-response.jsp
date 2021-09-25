<html>
<head>
<title>Confirmation</title>


</head>

<%
// read form 
String favlang = request.getParameter("favoriteLanguage");
// create cookies
Cookie  theCookie = new Cookie ("myapp.favoriteLanguage", favlang);
// set the life span of the cookies
theCookie.setMaxAge(60*60*24*365);
// send the cookie to the browser
response.addCookie(theCookie);s
%>
<body>
Thanks! We have set your favorite language to:  request.getParameter("favoriteLanguage") 
<a href="cookie-hompage.jsp">Return to the Homepage</a>
</body>
</html>