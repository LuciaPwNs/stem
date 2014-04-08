  
<cfif IsDefined('cookie.admin')>
    <!--If admin is logged in load this admin views-->
    <link rel="stylesheet" type="text/css" href="css/admin.css">
    <cfinclude template="contentAdmin.cfm">
<cfelse>
    <!--if Employeed is logged in load employee views-->
    <link rel="stylesheet" type="text/css" href="css/employee.css">
    <cfinclude template="contentEmployee.cfm">
</cfif>
