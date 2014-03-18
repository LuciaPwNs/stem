<cfcomponent>
	<cfset This.name = "Stem">
	<cfset This.clientmanagement = True> 
	<cfset This.sessionManagement = True > 
	<cfset This.sessionTimeout ="#createtimespan(0,1,0,0)#">
	<cfset this.applicationTimeout = "#CreateTimeSpan(0,1,0,0)#">

	<cffunction name="onApplicationStart">
		<cfscript>
			

		</cfscript>
		<cfreturn true>
	</cffunction>

	<cffunction name="onSessionStart">
		<cfscript>
			Cookie.logged_in = false;
		</cfscript>
		<cfreturn true>
	</cffunction>

	<cffunction name="onSessionEnd">
	</cffunction>

	<cffunction name="onRequestStart">
	</cffunction>

</cfcomponent>