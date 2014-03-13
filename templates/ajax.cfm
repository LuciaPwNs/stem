<cfapplication name="stem" sessionmanagement="Yes" sessiontimeout=#CreateTimeSpan(0,0,45,0)#>
<cfquery datasource="stem" name="login" result="login_cred" debug="true">
	SELECT * FROM admins WHERE id = "#form.id#"
</cfquery>
<cfif login_cred.recordcount eq 1>
	<cflock timeout=20 scope="Session" type="Exclusive"> 
    	<cfset Session.logged_in = true> 
	</cflock>
	<!---
	<cfdump var="#login_cred#"></cfdump>
	
	<cfparam name="form.number1" default="0">
	<cfparam name="form.number2" default="0">

	<cfset form.number1 = val(form.number1)>
	<cfset form.number2 = val(form.number2)>
--->
	<cfoutput>#Session.logged_in#</cfoutput>
	
<cfelse>
	'crap something went wrong'
</cfif> 