<div id="side_navigation">
	<button type="button" class="side_nav_button" onclick="window.location.href='index.cfm?insurance&electionOptOut'">Election/Opt Out</button>
</div>
<cfif isDefined('URL.electionOptOut')>
	<cfinclude template="subTabs/electionOptOut.cfm">
<cfelse>
	<!--if the url only contains the template variable and not a subTab variable, then load the first button by default so we don't load a blank page-->
	<cfinclude template="subTabs/electionOptOut.cfm">
</cfif>