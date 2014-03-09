<div id="side_navigation">
	<button type="button" class="side_nav_button" onclick="window.location.href='index.cfm?performance&review'">Review</button>
	<button type="button" class="side_nav_button" onclick="window.location.href='index.cfm?performance&disiplinaryActions'">Disiplinary Actions</button>
	<button type="button" class="side_nav_button" onclick="window.location.href='index.cfm?performance&skillsEducation'">Skills/Education</button>
	<button type="button" class="side_nav_button" onclick="window.location.href='index.cfm?performance&careerPath'">Career Path</button>
</div>
<cfif isDefined('URL.review')>
	<cfinclude template="subTabs/review.cfm">
<cfelseif isDefined('URL.disiplinaryActions')>
	<cfinclude template="subTabs/disiplinaryActions.cfm">
<cfelseif isDefined('URL.skillsEducation')>
	<cfinclude template="subTabs/skillsEducation.cfm">
<cfelseif isDefined('URL.careerPath')>
	<cfinclude template="subTabs/careerPath.cfm">
</cfif>