<div>
	<div id="side_navigation">
		<button type="button" class="side_nav_button">Application/Resume</button>
		<button type="button" class="side_nav_button">Disclosure</button>
		<button type="button" class="side_nav_button">Criminal Report</button>
		<button type="button" class="side_nav_button">Credit Report</button>
		<button type="button" class="side_nav_button">Reference Checks</button>
		<button type="button" class="side_nav_button">Testing</button>
	</div>
	<div >
		<cfif isDefined('URL.resume')>
			<cfinclude template="resume.cfm">
		<cfelseif isDefined('URL.disclosure')>
			<cfinclude template="disclosure.cfm">
		<cfelseif isDefined('URL.criminalReport')>
			<cfinclude template="criminalReport.cfm">
		<cfelseif isDefined('URL.creditReport')>
			<cfinclude template="creditReport.cfm">
		<cfelseif isDefined('URL.referenceChecks')>
			<cfinclude template="referenceChecks.cfm">
		<cfelseif isDefined('URL.testing')>
			<cfinclude template="testing.cfm">
		</cfif>
	</div>
</div>