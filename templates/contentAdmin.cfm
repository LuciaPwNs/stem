<script type="text/javascript">
	//When the event "cfSessionLoaded" fires us use the session variable to get employee data
	$(document).ready(function() {
		//Load employee data when session.selectedEmployee is set or after search
		$(document).on( "cfSessionLoaded", "reloadEmployeeData", function() {
	        getEmployeeData(document.session.selectedEmployee);
	    });

		$(document).on("employeeDataReady", function(){
		    $('form[name="form"] :input').each(function() {
		        //values[this.name] = $(this).val();
		        //use this.name to get the value for that field from document.employee
		        $(this).val(document.employee[this.name])
		    });

		});
	    
	})
    
</script>
<div id="content">
	<cfif isDefined('URL.application')>
		<cfinclude template="application.cfm">
	<cfelseif isDefined('URL.employee')>
		<cfinclude template="employee.cfm">
	<cfelseif isDefined('URL.calendar')>
		<cfinclude template="calendar.cfm">
	<cfelseif isDefined('URL.performance')>
		<cfinclude template="performance.cfm">
	<cfelseif isDefined('URL.insurance')>
		<cfinclude template="insurance.cfm">
	<cfelseif isDefined('URL.retirement')>
		<cfinclude template="retirement.cfm">
	<cfelseif isDefined('URL.misc')>
		<cfinclude template="misc.cfm">
	<cfelse>
		<!--if the url only contains the template variable and not a subTab variable, then load the first button by default so we don't load a blank page-->
		<cfinclude template="application.cfm">
	</cfif>
</div>
