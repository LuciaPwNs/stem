<div id="content">
	In Admin template
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
	</cfif>
</div>
