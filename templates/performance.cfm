<div>
	<div id="side_navigation">
		<button type="button" class="side_nav_button">Review</button>
		<button type="button" class="side_nav_button">Disiplinary Actions</button>
		<button type="button" class="side_nav_button">Skills/Education</button>
		<button type="button" class="side_nav_button">Career Path</button>
	</div>
	<div >
		<cfif isDefined('URL.review')>
			<cfinclude template="review.cfm">
		<cfelseif isDefined('URL.disiplinaryActions')>
			<cfinclude template="disiplinaryActions.cfm">
		<cfelseif isDefined('URL.skillsEducation')>
			<cfinclude template="skillsEducation.cfm">
		<cfelseif isDefined('URL.careerPath')>
			<cfinclude template="careerPath.cfm">
		</cfif>
	</div>
</div>