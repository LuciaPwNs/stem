<cfquery datasource="stem" name="checkAdminTable" debug="true">
	SELECT id, first_name, last_name FROM admins WHERE id = "#form.id#" AND password = "#form.password#"
	
</cfquery>	

<cfquery datasource="stem" name="checkEmployeeTable" debug="true">
	SELECT id, first_name, last_name FROM employee WHERE id = "#form.id#" AND password = "#form.password#"
</cfquery>	

<cfquery name="login" result="login1" dbtype="query"> 
	SELECT * FROM checkAdminTable 
	UNION 
	SELECT * FROM checkEmployeeTable 
</cfquery> 
<cfoutput>
	#login_creds#
</cfoutput>
<cfif login_creds.recordcount eq 1>
	<cfset Cookie.logged_in = #login.id[1]#>
	<cfif #login.roles[1]# eq "admin">
		<cfset Cookie.admin = true>
	</cfif>
<cfelse>

	<cfoutput>user id or password is incorrect</cfoutput>
</cfif> 

<!---<cflocation url="../index.cfm" addtoken="false">--->