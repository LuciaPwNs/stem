<div id="side_navigation">
	<button type="button" class="side_nav_button" onclick="window.location.href='index.cfm?application&resume'"><p>Application/</p>Resume</button>
	<button type="button" class="side_nav_button" onclick="window.location.href='index.cfm?application&disclosure'">Disclosure</button>
	<button type="button" class="side_nav_button" onclick="window.location.href='index.cfm?application&criminalReport'">Criminal Report</button>
	<button type="button" class="side_nav_button" onclick="window.location.href='index.cfm?application&creditReport'">Credit Report</button>
	<button type="button" class="side_nav_button" onclick="window.location.href='index.cfm?application&referenceChecks'">Reference Checks</button>
	<button type="button" class="side_nav_button" onclick="window.location.href='index.cfm?application&testing'">Testing</button>
</div>
<cfif isDefined('URL.resume')>
	<cfinclude template="subTabs/resume.cfm">
<cfelseif isDefined('URL.disclosure')>
	<cfinclude template="subTabs/disclosure.cfm">
<cfelseif isDefined('URL.criminalReport')>
	<cfinclude template="subTabs/criminalReport.cfm">
<cfelseif isDefined('URL.creditReport')>
	<cfinclude template="subTabs/creditReport.cfm">
<cfelseif isDefined('URL.referenceChecks')>
	<cfinclude template="subTabs/referenceChecks.cfm">
<cfelseif isDefined('URL.testing')>
	<cfinclude template="subTabs/testing.cfm">
<cfelse>
	<!--if the url only contains the template variable and not a subTab variable, then load the first button by default so we don't load a blank page-->
	<cfinclude template="subTabs/resume.cfm">
</cfif>