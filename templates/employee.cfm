<div id="side_navigation">
	<button type="button" class="side_nav_button" onclick="window.location.href='index.cfm?employee&affirmativeAction'">Affirmative Action</button>
</div>
<cfif isDefined('URL.affirmativeAction')>
	<cfinclude template="subTabs/affirmativeAction.cfm">
<cfelse>
	<!--if the url only contains the template variable and not a subTab variable, then load the first button by default so we don't load a blank page-->
	<cfinclude template="subTabs/affirmativeAction.cfm">
</cfif>