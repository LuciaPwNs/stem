<script>
/*
    function submitForm() {
        
        $.ajax({
            type: 'GET',
            url: 'templates/ajax.cfm',
            success: function (data) {
               location.reload();
            },
            error: function(jqXHR, textStatus) {
                console.log( "Request failed: " + textStatus );
            }
        })
    }*/
        function submitForm() {
            console.log('running...');
            ColdFusion.Ajax.submitForm('login', 'templates/login.cfm', callback, errorHandler);
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
		<cfinput type="text" name="id" validateat="onSubmit" required="true" message="Please enter something"><br/>
		<label for="password">Password: </label>
		<cfinput type="password" name="password" required="false"><br/>
		<cfinput type="submit" name="submit" value="Submit">
	</cfform>
</div>