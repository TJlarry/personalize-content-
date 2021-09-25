<html>

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
			 
			 
		 }
		 
		 
		 
		 
	 }
}



%>
</body>


</html>