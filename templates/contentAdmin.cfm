<script type="text/javascript">
    $(document).on( "cfSessionLoaded", function() {
        getEmployeeData(document.session.selectedemployee);
    });

    var $inputs = $('#form :input');
    var values = {};
    $inputs.each(function() {
        values[this.name] = $(this).val();
    });
    
</script>
In Admin template
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
