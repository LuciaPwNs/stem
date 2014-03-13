<html>
	<cfapplication name="stem" sessionmanagement="Yes" sessiontimeout=#CreateTimeSpan(0,0,45,0)#>
	<cfparam name = "Session.logged_in" default = false>
	<cfajaximport/>
	<cfinclude template="templates/header.cfm">
	<body>
		<!--If someone is logged in then load the signed in templates-->
		<cfif Session.logged_in eq true>
			
			<div id="logo" onclick="window.location.href='index.cfm'"></div>
			<div id="search_box">Searching</div>

			<div id="meat_and_potatoes">
				<div id="navigation">
					<button type="button" class="nav_button" onclick="window.location.href='index.cfm?application'">Application</button>
					<button type="button" class="nav_button" onclick="window.location.href='index.cfm?employee'">Employee</button>
					<button type="button" class="nav_button" onclick="window.location.href='index.cfm?calendar'">Calendar</button>
					<button type="button" class="nav_button" onclick="window.location.href='index.cfm?performance'">Performance</button>
					<button type="button" class="nav_button" onclick="window.location.href='index.cfm?insurance'">Insurance</button>
					<button type="button" class="nav_button" onclick="window.location.href='index.cfm?retirement'">Retirement</button>
					<button type="button" class="nav_button" onclick="window.location.href='index.cfm?misc'">Misc</button>
				</div>

				<!--this will go away, Its just for testing purposes this is what ids will look like-->
				
				<cfif IsDefined("user.admin")>
					<!--If admin is logged in load this admin views-->
					<link rel="stylesheet" type="text/css" href="css/admin.css">
					<cfinclude template="templates/contentAdmin.cfm">
				<cfelse>
					<!--if Employeed is logged in load employee views-->
					<link rel="stylesheet" type="text/css" href="css/employee.css">
					<cfinclude template="templates/contentEmployee.cfm">
					
				</cfif>
			
			</div>
			
		<cfelse>
			<!--no one is logged in so show the sign up stuff-->

			<cfinclude template="templates/login.cfm">
		</cfif>
	</body>
</html>