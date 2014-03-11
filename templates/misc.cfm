<div id="side_navigation">
	<button type="button" class="side_nav_button" onclick="window.location.href='index.cfm?misc&photos'">Photos</button>
	<button type="button" class="side_nav_button" onclick="window.location.href='index.cfm?misc&communityInvolvement'">Community Involvement</button>
</div>
<cfif isDefined('URL.photos')>
	<cfinclude template="subTabs/photos.cfm">
<cfelseif isDefined('URL.communityInvolvement')>
	<cfinclude template="subTabs/communityInvolvement.cfm">
<cfelse>
	<!--if the url only contains the template variable and not a subTab variable, then load the first button by default so we don't load a blank page-->
	<cfinclude template="subTabs/photos.cfm">
</cfif>