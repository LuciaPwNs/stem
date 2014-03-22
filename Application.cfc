<cfcomponent>
	<cfset THIS.name = "Stem">
	<cfset THIS.clientmanagement = True> 
	<cfset THIS.sessionManagement = True > 
	<cfset THIS.sessionTimeout ="#createtimespan(0,1,0,0)#">
	<cfset THIS.applicationTimeout = "#CreateTimeSpan(0,1,0,0)#">
	<cfset THIS.RootPath = GetDirectoryFromPath(GetCurrentTemplatePath())>
	<cfset THIS.CustomTagPathsArray = [(THIS.RootPath & "components/")]> 
    <cfset THIS.CustomTagPaths = ArrayToList( THIS.CustomTagPathsArray )> 
    <cfset THIS.mappings['/components'] = THIS.CustomTagPathsArray[1]>


	<cffunction name="onApplicationStart">
		<cfscript>
			

		</cfscript>
		<cfreturn true>
	</cffunction>

	<cffunction name="onSessionStart">
		<cfscript>
			Cookie.logged_in = true;
			Cookie.admin = true;
		</cfscript>
		<cfreturn true>
	</cffunction>

	<cffunction name="onSessionEnd">
	</cffunction>

	<cffunction name="onRequestStart">
	</cffunction>

</cfcomponent>