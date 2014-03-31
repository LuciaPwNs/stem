<script type="text/javascript">
	$(document).ready(function() {
		//Load form when the document is completely done loading
		console.log('Currently Loaded Employee', JSON.parse(window.localStorage.employee));

		$('form[name="form"] :input').each(function() {
	        
	        //use this.name to get the value for that field from document.employee
	        var employeeData = JSON.parse(window.localStorage.employee);
	      	//ignore the submit input
	        if ($(this).attr('type') !== "submit") {
	        	//update everything that isnt a submit button
	        	$(this).val(employeeData[this.name]);
        	}
	    });

	    //load basic info on top of page
	    $('#basicInfo').children('span').each(function() {
	    	var employeeData = JSON.parse(window.localStorage.employee);
	        //values[this.name] = $(this).val();
	        //use this.name to get the value for that field from document.employee
	        console.log('this', $(this).attr('name'));
	        $(this).text(employeeData[$(this).attr('name')]);
	    });

	    //When the event "cfSessionLoaded" fires us use the session variable to get employee data
		//Load employee data when session.selectedEmployee is set or after search
		$(document).on( "cfSessionLoaded", "reloadEmployeeData", function() {
	        getEmployeeData(window.localStorage.selectedEmployee);
	    });
	    
		/*
		$(document).on("employeeDataReady", function(){
			console.log('in employee data ready');
			//find the form named "form" on the page and get the inputs it contains so we know what to load
			var employeeData = JSON.parse(window.localStorage.employee);
		    $('form[name="form"] :input').each(function() {
		        //values[this.name] = $(this).val();
		        //use this.name to get the value for that field from document.employee
		        $(this).val(employeeData[this.name]);
		    });

		    //load basic info on top of page
		    $('#basicInfo :input').each(function() {
		        //values[this.name] = $(this).val();
		        //use this.name to get the value for that field from document.employee
		        
		        $(this).val(employeeData[this.name])
		    });

		    console.log('shit should have changed');
		});
		*/
		$('form').on('submit', function(event) {
		    //when the form with the name "form" submits save data to correct table
		    event.preventDefault();
		    console.log('submitting form!');
		    console.log("$(this).attr('id')", $(this).attr('id'));
		    saveEmployeeData($(this).attr('id'));
		});



		$('form :input').change(function(){

			var employeeData = JSON.parse(window.localStorage.employee);
			console.log(this.value);
			employeeData[this.name] = this.value;

		   	window.localStorage.setItem('employee', JSON.stringify(employeeData));

		});
	    
	})
    
</script>
<div id="content">
	<cfif isDefined('URL.application')>
		<cfinclude template="application.cfm">
	<cfelseif isDefined('URL.employee')>
		<cfinclude template="employee.cfm">
	<cfelseif isDefined('URL.calendar')>
		<cfinclude template="calendar.cfm">
	<cfelseif isDefined('URL.performance')>
		<cfinclude template="performance.cfm">
	<cfelseif isDefined('URL.insurance')>
		<cfinclude template="insurance.cfm">
	<cfelseif isDefined('URL.retirement')>
		<cfinclude template="retirement.cfm">
	<cfelseif isDefined('URL.misc')>
		<cfinclude template="misc.cfm">
	<cfelse>
		<!--if the url only contains the template variable and not a subTab variable, then load the first button by default so we don't load a blank page-->
		<cfinclude template="application.cfm">
	</cfif>
</div>
