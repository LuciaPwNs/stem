<script type="text/javascript">
			function logout () {
				document.cookie = "ADMIN=; expires=Thu, 01 Jan 1970 00:00:00 GMT";
				document.cookie = "CFCLIENT_STEM=; expires=Thu, 01 Jan 1970 00:00:00 GMT";
				document.cookie = "CFGLOBALS=; expires=Thu, 01 Jan 1970 00:00:00 GMT";
				document.cookie = "CFID=; expires=Thu, 01 Jan 1970 00:00:00 GMT";
				document.cookie = "CFTOKEN=; expires=Thu, 01 Jan 1970 00:00:00 GMT";
				document.cookie = "LOGGED_IN=; expires=Thu, 01 Jan 1970 00:00:00 GMT";

				window.localStorage.removeItem('employee');

				$.ajax({
					type: 'GET',
					url: 'templates/logout.cfm',
					success: function () {
						console.log('session deleted!!!!!');
						window.location = "index.cfm";
					},
				})
			}
</script>
<a id="logout" href="javascript:logout()">Logout</a><br/>
<cfif IsDefined('cookie.admin')>
    <!--If admin is logged in load this admin views-->
    <link rel="stylesheet" type="text/css" href="css/admin.css">
    <cfinclude template="contentAdmin.cfm">
<cfelse>
    <!--if Employeed is logged in load employee views-->
    <link rel="stylesheet" type="text/css" href="css/employee.css">
    <cfinclude template="contentEmployee.cfm">
</cfif>
