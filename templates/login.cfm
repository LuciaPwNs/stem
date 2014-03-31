<cfquery datasource="stem" name="login" result="login_creds" debug="true">
	SELECT * FROM admins WHERE id = "#form.id#" AND password = "#form.password#"
</cfquery>	

<cfif login_creds.recordcount eq 1>
	<cfset Cookie.logged_in = #login.id[1]#>
	<cfif #login.roles[1]# eq "admin">
		<cfset Cookie.admin = true>
	</cfif>
<cfelse>
	<cfoutput>user id or password is incorrect</cfoutput>
</cfif> 

<!---<cflocation url="../index.cfm" addtoken="false">--->