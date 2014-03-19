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
        location.reload();
        
    }
    
    function errorHandler(code, msg)
    {
        console.log("Error!!! " + code + ": " + msg);
    }
</script>
<div id="login_error"></div>
<div id="login_box">
	<cfform id="login" action="javascript:submitForm()">
		<label for="id">ID: </label>
		<cfinput type="text" name="id" size="50" validateat="onSubmit" required="true" message="Please enter something"><br/>
		<label for="password">Password: </label>
		<cfinput type="password" name="password" size="50" required="false"><br/>
		<cfinput type="submit" name="submit" value="Submit">
	</cfform>
</div>