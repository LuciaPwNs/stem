<div id="side_navigation">
	<button type="button" class="side_nav_button" onclick="window.location.href='index.cfm?insurance&electionOptOut'">Election/Opt Out</button>
</div>
<cfif isDefined('URL.electionOptOut')>
	<cfinclude template="subTabs/electionOptOut.cfm">
</cfif>