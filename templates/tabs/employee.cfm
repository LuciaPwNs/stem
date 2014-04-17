<div id="side_navigation">
	<button type="button" class="side_nav_button" onclick="window.location.href='index.cfm?employee&affirmativeAction'">Affirmative Action</button>
	<button type="button" class="side_nav_button" onclick="window.location.href='index.cfm?employee&Proposal'">Proposal</button>
	<button type="button" class="side_nav_button" onclick="window.location.href='index.cfm?employee&NewEmployeeSheet'">New Employee Sheet</button>
	<button type="button" class="side_nav_button" onclick="window.location.href='index.cfm?employee&ResidencyCert'">Residency Cert</button>
	<button type="button" class="side_nav_button" onclick="window.location.href='index.cfm?employee&NewHireReport'">New Hire Report</button>
	<button type="button" class="side_nav_button" onclick="window.location.href='index.cfm?employee&W4'">W4</button>
	<button type="button" class="side_nav_button" onclick="window.location.href='index.cfm?employee&PayEntry'">Pay Entry</button>
	<button type="button" class="side_nav_button" onclick="window.location.href='index.cfm?employee&Identification'">Idenification</button>

	<button name="exportToPDF" class="export">Export</button>
</div>

<cfif isDefined('URL.affirmativeAction')>
	<cfinclude template="subTabs/affirmativeAction.cfm">
<cfelseif isDefined('URL.Proposal')>
	<cfinclude template="subTabs/Proposal.cfm">
<cfelseif isDefined('URL.NewEmployeeSheet')>
	<cfinclude template="subTabs/NewEmployeeSheet.cfm">
<cfelseif isDefined('URL.ResidencyCert')>
	<cfinclude template="subTabs/ResidencyCert.cfm">
<cfelseif isDefined('URL.NewHireReport')>
	<cfinclude template="subTabs/NewHireReport.cfm">
<cfelseif isDefined('URL.W4')>
	<cfinclude template="subTabs/W4.cfm">
<cfelseif isDefined('URL.PayEntry')>
	<cfinclude template="subTabs/PayEntry.cfm">
<cfelseif isDefined('URL.Identification')>
	<cfinclude template="subTabs/Identification.cfm">
<cfelse>
	<!--if the url only contains the template variable and not a subTab variable, then load the first button by default so we don't load a blank page-->
	<cfinclude template="subTabs/resume.cfm">
</cfif>