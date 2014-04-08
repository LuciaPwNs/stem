<html>

	<head>
		<link rel="stylesheet" type="text/css" href="css/css_reset.css">
		<link rel="stylesheet" type="text/css" href="/stem/css/site_template.css">
		<!--Depending on who is logged in we will load either the employee or admin style sheet (i think)-->
		<link rel="stylesheet" type="text/css" href="/stem/css/admin.css">
		<!--<link rel="stylesheet" type="text/css" href="/stem/css/employee.css">-->
		<title>STEM</title>

		<script src="bin/jquery-1.11.0.js"></script>
		<script type="text/javascript">
			//Check if Query is loaded
			if (typeof jQuery != 'undefined') {
			    console.log("jQuery library is loaded!");
			} else {
			    
			}
			
			//Make a global variable session to match document.cookie (just in case we decide to use it)
			$.ajax({
			    type: 'GET',
			    url: 'components/stem_components.cfc?method=getSession',
			    dataType: "json"
			})
			.done(function (data) {
	    		document.session = data;
	    		$(document).trigger('cfSessionLoaded');
			})
	  		.fail(function(jqXHR, textStatus) {
				console.log( "Request failed: " + textStatus );
			});

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
			
			function clearEmployee () {
				window.localStorage.removeItem('employee');
				console.log('window.localStorage.employee cleared', window.localStorage.employee);
				location.reload();
			}

		</script>

		<cfajaximport/>	

		<cfinclude template="templates/header.cfm">
		
	</head>
	<body>
		<!--If someone is logged in then load the signed in templates-->
		<cfif IsDefined('cookie.logged_in')>
			<a id="logout" href="javascript:logout()">Logout</a><br/>
			<cfinclude template="templates/main.cfm">
		<cfelse>
			<!--no one is logged in so show the sign up stuff-->
			<cfinclude template="templates/loginForm.cfm">
		</cfif>
		<br/>
	</body>
		All the browser cookies currently set and their values:<cfdump var="#cookie#" label="Current Cookies"></cfdump>
		All the session variable that are set (CFID and CFTOKEN are by coldfusion to verify access):<cfdump var="#Session#" label="Current Session"></cfdump><br/><br/>
</html>