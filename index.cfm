<html>
	<META HTTP-EQUIV="Expires" CONTENT="Tue, 01 Jan 1980 1:00:00 GMT">
	<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
	<cfajaximport/>

	<cfinclude template="templates/header.cfm">

	<body>
		<a href="index.cfm?restart=true">ApplicationRestart()</a><br/>
		<a href="index.cfm?killSession=true">killSession()</a><br/>


		Application: <cfdump var="#Application#"></cfdump><br/>
		Session: <cfdump var="#Session#"></cfdump><br/><br/>
		<!--If someone is logged in then load the signed in templates-->
		<cfif Session.logged_in eq true>
			<cfinclude template="templates/main.cfm">	
		<cfelse>
			<!--no one is logged in so show the sign up stuff-->
			<cfinclude template="templates/login.cfm">
		</cfif>
</html>