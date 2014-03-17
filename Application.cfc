<cfcomponent>
	<cfset This.name = "Stem">
	<cfset This.clientmanagement = "True"> 
	<cfset This.sessionManagement = True> 
	<cfset This.sessionTimeout ="#createtimespan(0,1,0,0)#">
	<cfset this.applicationTimeout = "#CreateTimeSpan(0,1,0,0)#">

	<cffunction name="onApplicationStart">
		<cfcache action="flush">
		<cfscript>
			Session.logged_in = false;
			Application.dateInit = now();
		</cfscript>
		<cfreturn true>
	</cffunction>

	<cffunction name="onSessionStart">
		<cfscript>
			Session.dateInit = now();
		</cfscript>
		<cfreturn true>
	</cffunction>

	<cffunction name="onSessionEnd">
		<cfscript>
			Session.ended = true;
			application.ended = true;
		</cfscript>
	</cffunction>

	<cffunction name="onRequestStart">
		<cfif structKeyExists(url, "restart")>
			<cfset onApplicationStart() />
			<cflocation url="index.cfm" addtoken="no">
		<cfelseif structKeyExists(url, "killSession")>
			<cfset this.sessionTimeout = createTimeSpan( 0, 0, 0, 1 ) />
			<cflocation url="index.cfm" addtoken="no">
		</cfif>

	</cffunction>

</cfcomponent>