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

            ColdFusion.Ajax.submitForm('login', 'templates/login.cfm', callback, errorHandler);

        }
        
        function callback(text)
        {
            
            console.log("Callback: " + text);
            window.localStorage.setItem('loggedInEmployee', JSON.stringify(text));
            
            location.reload();
            
        }
        
        function errorHandler(code, msg)
        {
            console.log("Error!!! " + code + ": " + msg);
        }
    

</script>
<div id="login_error"></div>
<div id="login_box">
    <img src="images/logo.png">
	<cfform id="login" action="javascript:submitForm()">
		<cfinput type="text" name="id" validateat="onSubmit" required="true" message="Please enter something" placeholder="ID"><br/>
		<cfinput type="password" name="password" required="false" placeholder="Password"><br/>
		<cfinput type="submit" name="submit" value="Submit">
	</cfform>
</div>