<html>
	<cfinclude template="templates/header.cfm">
	<body>
		<div id="logo"></div>
		<div id="search_box">Searching</div>

		<div id="meat_and_potatoes">
			<div id="navigation">
				<button type="button" class="nav_button">Application</button>
				<button type="button" class="nav_button">Employee</button>
				<button type="button" class="nav_button">Calendar</button>
				<button type="button" class="nav_button">Performance</button>
				<button type="button" class="nav_button">Insurance</button>
				<button type="button" class="nav_button">Retirement</button>
				<button type="button" class="nav_button">Misc</button>
			</div>

			<!--this will go away, Its just for testing purposes-->
			<cfset user.loggedin = true>

			<cfif IsDefined("user.loggedin")>
				<!--If admin is logged in load this content-->
				<cfinclude template="templates/contentAdmin.cfm">
				<link rel="stylesheet" type="text/css" href="css/admin.css">
			<cfelse>
				<!--if Employeed is logged in load employee template-->
				<cfinclude template="templates/contentEmployee.cfm">
				<link rel="stylesheet" type="text/css" href="css/employee.css">
			</cfif>
		</div>
	</body>
</html>