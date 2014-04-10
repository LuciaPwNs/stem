<script type="text/javascript">
	$(document).ready(function(){
		//when employee logs in load employee data to session so we can start keeping track of their name to auto fill the forms...and what not.
		
	})
</script>
<div id="container" class="clearfix">
	<div id="logo" onclick="window.location.href='index.cfm'"><img src="images/logo.png"></div>
	<div id="currentEmployeeInfo">
	    <div id="employeePhoto">
	        <img src="images/profile_default.png"/>
	    </div>
	    <div id="basicInfo">
	        ID: <span name="id"></span><br/>
	        First Name: <span name="first_name"></span><br/>
	        Last Name: <span name="last_name"></span><br/>
	        Address: <span name="address_1"></span><br/>
	                 <span name="address_2"></span><br/> 
	    </div>
	</div>
	<div id="content">
		<cfif isDefined('URL.application')>
			<cfinclude template="steps/application.cfm">
		<cfelseif isDefined('URL.employee')>
			<cfinclude template="steps/employee.cfm">
		<cfelseif isDefined('URL.calendar')>
			<cfinclude template="steps/calendar.cfm">
		<cfelseif isDefined('URL.performance')>
			<cfinclude template="steps/performance.cfm">
		<cfelseif isDefined('URL.insurance')>
			<cfinclude template="steps/insurance.cfm">
		<cfelseif isDefined('URL.retirement')>
			<cfinclude template="steps/retirement.cfm">
		<cfelseif isDefined('URL.misc')>
			<cfinclude template="steps/misc.cfm">
		<cfelse>
			<!--if the url only contains the template variable and not a subTab variable, then load the first button by default so we don't load a blank page-->
			<cfinclude template="steps/application.cfm">
		</cfif>
	</div>
</div>
