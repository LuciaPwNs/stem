<html>
	<cfinclude template="templates/header.cfm">
	<body>
		<cfoutput>#ucase("Herro Worrd")#</cfoutput>
		<br/>
		<div id="navigation">
			<a href=""class="nav_button">Something</a><a href=""class="nav_button">Something Else</a><a href=""class="nav_button">Not Porn</a>
		</div>
		<cfset user.loggedin = false> 
		<cfif IsDefined("user.loggedin")
			<!--If admin is logged in load this content-->
			<cfinclude template="templates/contentAdmin.cfm">	
		<cfelse>
			<!--if Employeed is logged in load employee template-->
			<cfinclude template="templates/contentEmployee.cfm">
		</cfif>
	</body>
</html>