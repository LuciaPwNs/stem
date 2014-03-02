<div>
	<div id="side_navigation">
		<button type="button" class="side_nav_button">Election/Opt Out</button>
	</div>
	<div >
		<cfif isDefined('URL.electionOptOut')>
			<cfinclude template="electionOptOut.cfm">
		</cfif>
	</div>
</div>