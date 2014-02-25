<html>
	<cfinclude template="templates/header.cfm">
	<body>
		<div id="logo"></div>
		<div id="search_box">Searching</div>

		<div id="meat_and_potatoes">
			<div id="navigation">
				<button type="button" class="nav_button" onclick="window.location.href='application'">Application</button>
				<button type="button" class="nav_button">Employee</button>
				<button type="button" class="nav_button">Calendar</button>
				<button type="button" class="nav_button">Performance</button>
				<button type="button" class="nav_button">Insurance</button>
				<button type="button" class="nav_button">Retirement</button>
				<button type="button" class="nav_button">Misc</button>
			</div>

			<!---this will go away, Its just for testing purposes--->
			<cfset user.loggedin = true>
kjlfnwfnrf
			<cfif IsDefined("user.loggedin")>
				<!---If admin is logged in load this content--->
				<!---<cfinclude template="templates/contentAdmin.cfm">--->
				<link rel="stylesheet" type="text/css" href="css/admin.css">
			<cfelse>
				<!---if Employeed is logged in load employee template--->
				<cfinclude template="templates/contentEmployee.cfm">
				<link rel="stylesheet" type="text/css" href="css/employee.css">
			</cfif>
			<div id="content">
				In Admin template
				<!---decide which page we are on and display the related sidebar for that.--->
				<!---<cfinclude template="application.cfm">--->
				<div id="side_navigation">
					<button type="button" class="side_nav_button">Application/Resume</button>
					<button type="button" class="side_nav_button">Disclosure</button>
					<button type="button" class="side_nav_button">Credit Check</button>
				</div>
				<div id="employee_info">
					<form name="employee_info">
						<input type="text" name="Employee Name" />
					</form>
				</div>
			</div>

		</div>
	</body>
</html>