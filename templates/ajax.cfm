<cfquery datasource="stem" name="login" result="login_cred" debug="true">
	SELECT * FROM admins WHERE id = "#form.id#"
</cfquery>

<cfif login_cred.recordcount eq 1>
	<cfset Session.logged_in = true>
<cfelse>
	'crap something went wrong'
</cfif> 