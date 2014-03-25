<div id="side_navigation">
	<button type="button" class="side_nav_button" onclick="window.location.href='index.cfm?employee&affirmativeAction'">Affirmative Action</button>
	<button type="button" class="side_nav_button" onclick="window.location.href='index.cfm?employee&Proposal'">Proposal</button>
	<button type="button" class="side_nav_button" onclick="window.location.href='index.cfm?employee&NewEmployeeSheet'">New Employee Sheet</button>
	<button type="button" class="side_nav_button" onclick="window.location.href='index.cfm?employee&ResidencyCert'">Residency Cert</button>
	<button type="button" class="side_nav_button" onclick="window.location.href='index.cfm?employee&NewHireReport'">New Hire Report</button>
	<button type="button" class="side_nav_button" onclick="window.location.href='index.cfm?employee&W4'">W4</button>
	<button type="button" class="side_nav_button" onclick="window.location.href='index.cfm?employee&PayEntry'">Pay Entry</button>
	<button type="button" class="side_nav_button" onclick="window.location.href='index.cfm?employee&Identification'">Idenification</button>
</div>
<cfif isDefined('URL.affirmativeAction')>
	<cfinclude template="subTabs/affirmativeAction.cfm">
<cfelse>
	<!--if the url only contains the template variable and not a subTab variable, then load the first button by default so we don't load a blank page-->
	<cfinclude template="subTabs/affirmativeAction.cfm">
</cfif>


