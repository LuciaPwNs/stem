<cfif IsDefined("form.fieldnames")> 
    <cfdump var="#form#"><br> 

</cfif>
<script>
    function submitForm() {
    	console.log('running...');
        ColdFusion.Ajax.submitForm('login', 'templates/ajax.cfm', callback, errorHandler);
        console.log('done...');
    }
    
    function callback(text)
    {
    	
        console.log("Callback: " + text);
    }
    
    function errorHandler(code, msg)
    {
        console.log("Error!!! " + code + ": " + msg);
    }
</script>

<div id="login_box">
	<cfform id="login" action="javascript:submitForm()">
		<label for="id">ID: </label>
		<cfinput type="text" name="id" size="50" validateat="onSubmit" required="true" message="Please enter something"><br/>
		<label for="password">Password: </label>
		<cfinput type="password" name="password" size="50" required="false"><br/>
		<cfinput type="submit" name="submit" value="Submit">
	</cfform>
	<cfform name="loginform" action="#CGI.script_name#?#CGI.query_string#" method="Post">
        user name: <cfinput type="text" name="j_username" required="yes" message="A user name is required"><br/>
        password: <cfinput type="password" name="j_password" required="no" message="A password is required"><br/>

	    <br/>
	    <input type="submit" value="Log In">
	</cfform>
</div>