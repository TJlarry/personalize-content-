<html>
<head>

</head>

<body> 

<!--  read favorite programming language  cookies -->
<h3> Training Portal</h3>
<%   
// the defualt if there is no cookies
String favlang = "Java";
//get the cookies from the browser request

Cookie[] theCookie = request.getCookies();
// find the favorite language cookies
if ( theCookie != null){
	for(Cookie tempcookie: theCookie){
		 if("myApp.favoriteLanguage".equals(tempcookie.getName())){
			favlang = tempcookie.getName(); 
			break;
		 }	 
	 }
}
%>

<!--how personalize page --> 

<h3> New books for<%=favlang %> </h3>
<ul> 
<li> blah blah</li>
<li>blah blah blah</li>
</ul>
<h3>Latest news report on<%=favlang %> </h3>
<ul> 
<li>blah blah blah</li>
<li>blah blah blah</li>
</ul>

<h3>Hot jobs on<%=favlang %> </h3>
<ul> 
<li>blah blah blah</li>
<li>blah blah blah</li>
</ul>

<a href ="cookies-personalize-form.html"> Personalize this page </a>

</body>

</html>