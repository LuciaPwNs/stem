<html>
	<script src="bin/jquery-1.11.0.js"></script>
	<script type="text/javascript">
		//Check if Query is loaded
		if (typeof jQuery != 'undefined') {
		    console.log("jQuery library is loaded!");
		} else {
		    console.log("jQuery library is not found!");
		}
		
		//Make a global variable session to match document.cookie (just in case we decide to use it)
		$.ajax({
		    type: 'GET',
		    url: 'components/populate.cfc?method=getSession',
		    dataType: "json"
		})
		.done(function (data) {
    		document.session = data;
    		console.log('document.cookie', document.cookie);
			console.log('document.session', document.session);
			$(document).trigger('employeeLoaded');
		})
  		.fail(function(jqXHR, textStatus) {
			console.log( "Request failed: " + textStatus );
		});




	</script>

	<cfajaximport/>	
	<cfinclude template="templates/header.cfm">
	<link rel="stylesheet" type="text/css" href="css/css_reset.css">
	<body>
		<a id="logout" href="templates/logout.cfm">Logout</a><br/>
		<!--If someone is logged in then load the signed in templates-->
		<cfif IsDefined('cookie.logged_in')>
			<cfinclude template="templates/main.cfm">	
		<cfelse>
			<!--no one is logged in so show the sign up stuff-->
			<cfinclude template="templates/login.cfm">
		</cfif>
		<br/>

		All the browser cookies currently set and their values:<cfdump var="#cookie#" label="Current Cookies"/>
		All the session variable that are set (CFID and CFTOKEN are by coldfusion to verify access):<cfdump var="#Session#"></cfdump><br/><br/>
</html>