<div id="side_navigation">
	<button type="button" class="side_nav_button" onclick="window.location.href='index.cfm?misc&photos'">Photos</button>
	<button type="button" class="side_nav_button" onclick="window.location.href='index.cfm?misc&communityInvolvement'">Community Involvement</button>
</div>
<cfif isDefined('URL.photos')>
	<cfinclude template="subTabs/photos.cfm">
<cfelseif isDefined('URL.communityInvolvement')>
	<cfinclude template="subTabs/communityInvolvement.cfm">
</cfif>