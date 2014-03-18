<html>
	<cfajaximport/>

	<cfinclude template="templates/header.cfm">

	<body>
		<a href="templates/logout.cfm">Logout</a><br/>
		
		Cookies: <cfdump var="#cookie#" label="Current Cookies"/>
		Session: <cfdump var="#Session#"></cfdump><br/><br/>
		<!--If someone is logged in then load the signed in templates-->
		<cfif IsDefined(Cookie.logged_in)>
			<cfinclude template="templates/main.cfm">	
		<cfelse>
			<!--no one is logged in so show the sign up stuff-->
			<cfinclude template="templates/login.cfm">
		</cfif>
</html>