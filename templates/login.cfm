<cfquery datasource="stem" name="checkAdminTable" debug="true">
	SELECT id, first_name, last_name, roles FROM admins WHERE id = "#form.id#" AND password = "#form.password#"
	
</cfquery>	

<cfquery datasource="stem" name="checkEmployeeTable" debug="true">
	SELECT id, first_name, last_name, roles FROM employee WHERE id = "#form.id#" AND password = "#form.password#"
</cfquery>	

<cfquery name="login" result="login1" dbtype="query"> 
	SELECT * FROM checkAdminTable 
	UNION 
	SELECT * FROM checkEmployeeTable 
</cfquery> 


<cfoutput query="login">
	#login.id#
</cfoutput>
<br/>
<cfdump var="#login1#">

<cfif login1.recordcount eq 1>
	<cfset Cookie.logged_in = #login.id[1]#>
	<cfif #login.roles[1]# eq "admin">
		<cfset Cookie.admin = true>
	</cfif>
<cfelse>

	<cfoutput>user id or password is incorrect</cfoutput>
</cfif> 

<!---<cflocation url="../index.cfm" addtoken="false">--->