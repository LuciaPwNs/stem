<html>

	<head>
		<link rel="stylesheet" type="text/css" href="css/css_reset.css">
		<link rel="stylesheet" type="text/css" href="/stem/css/site_template.css">
		<script src="bin/jquery-1.11.0.js"></script>

		<script type="text/javascript">
			//Check if Query is loaded
			if (typeof jQuery != 'undefined') {
			    console.log("jQuery library is loaded!");
			} else {
			    
			}
			
			/*Make a global variable session to match document.cookie (just in case we decide to use it)
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
			*/
						
			function clearEmployee () {
				window.localStorage.removeItem('employee');
				console.log('window.localStorage.employee cleared', window.localStorage.employee);
				location.reload();
			}
		</script>

		<cfajaximport/>	

		<title>STEM</title>
	</head>
	<body>
		<!--If someone is logged in then load the signed in templates-->
		<cfif IsDefined('cookie.logged_in')>
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