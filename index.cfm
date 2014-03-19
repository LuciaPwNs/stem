<html>

	<cfajaximport/>

	<cfinclude template="templates/header.cfm">
	<link rel="stylesheet" type="text/css" href="css/css_reset.css">
	<body>
		<a id="logout" href="templates/logout.cfm">Logout</a><br/>
		<!--If someone is logged in then load the signed in templates-->
		<cfif IsDefined('cookie.logged_in')>
			<cfinclude template="templates/main.cfm">	
		<cfelse>
			<!--no one is logged in so show the sign up stuff-->
			<cfinclude template="templates/login.cfm">
		</cfif>
		<br/>
		All the browser cookies currently set and their values:<cfdump var="#cookie#" label="Current Cookies"/>
		All the session variable that are set (CFID and CFTOKEN are by coldfusion to verify access):<cfdump var="#Session#"></cfdump><br/><br/>
</html>