
<%@page import="java.net.URLDecoder" %>;

<html>
<head>
<meta charset="ISO-8859-1">
<meta name="author" content="Lanre Allioke">
<meta name="description" content="Home-Page">
<title>HomePage</title>
<style type="text/css">
body {
	background-color:lightgrey;
	text-align: left;
}
</style>
</head>
<body>
	<!--  read favorite programming language  cookies -->
	<h3>Training Portal</h3>
	<%
	// the defualt if there is no cookies
	String favlang = "Java";
	//get the cookies from the browser request
	Cookie[] theCookie = request.getCookies();
	// find the favorite language cookies
	if (theCookie != null) {
		for (Cookie tempcookie : theCookie) {
			if ("myApp.favoriteLanguage".equals(tempcookie.getName())) {
		favlang = URLDecoder.decode(tempcookie.getValue(),"UTF8");
		break;
			}
		}
	}
	%>
    <!--how personalize page -->
	<h3>New books for <%= favlang%></h3>
	<ul>
		<li>blah blah</li>
		<li>blah blah blah</li>
	</ul>
	<h3>
		Latest news report on
		<%=favlang%></h3>
	<ul>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
	</ul>
	<h3>
		Hot jobs on
		<%=favlang%></h3>
	<ul>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
	</ul>
	<hr>
	<a href="cookies-personalize-form.html">Personalize this page</a>
</body>

</html>