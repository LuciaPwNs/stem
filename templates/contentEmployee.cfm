<script type="text/javascript">
	$(document).ready(function() {
		
		if(window.localStorage.loggedInEmployee) {
			window.localStorage.selectedEmployee = window.localStorage.loggedInEmployee;
			delete(window.localStorage.loggedInEmployee);
			searchForEmployee(JSON.parse(window.localStorage.selectedEmployee));
		}

		//Load form when the document is completely done loading
		//*ASL Radio buttons need loaded correctly
		$('form[name="employeeDataForm"] :input').each(function() {
	        if (typeof window.localStorage.employee !== 'undefined') {
		        //use this.name to get the value for that field from document.employee
		        var employeeData = JSON.parse(window.localStorage.employee);
		        //console.log('employeeData',employeeData);

		      	//ignore the submit input and file elements
		        if ($(this).attr('type') !== "submit" && $(this).attr('type') !== "file") {
		        	//update everything that isnt a submit button

		        	if(this.type === "radio"){
		        		if(this.value === employeeData[this.name]){
		        			$(this).prop("checked", true);
		        		}
		        		
		        	}else{
		        		$(this).val(employeeData[this.name]);
		        	}
	        	}
	        }
	    });

	    //When the event "cfSessionLoaded" fires us use the session variable to get employee data
		//Load employee data when session.selectedEmployee is set or after search
		$(document).on( "cfSessionLoaded", "reloadEmployeeData", function() {
	        getEmployeeData(window.localStorage.selectedEmployee);
	    });

		
	    //load basic info on top of page
	    $('#basicInfo').children('span').each(function() {
	    	if (typeof window.localStorage.employee !== 'undefined') {
	    		var employeeData = JSON.parse(window.localStorage.employee);
	    		//values[this.name] = $(this).val();
		        //use $(this).attr('name') to get the value for that field from document.employee
		        $(this).text(employeeData[$(this).attr('name')]);
	    	}
	    });

		//This should happen when an admin saves a form that updates employee information.
		$('form[name="employeeDataForm"]').on('submit', function(event) {
		    //when the form a form submits save data to correct table
		    event.preventDefault();
		    saveEmployeeData($(this).attr('id'));
		}); 

		//This should happen when an admin changes an input
		$('form[name="employeeDataForm"] :input').change(function(){
			var employeeData = JSON.parse(window.localStorage.employee);
																														
			employeeData[this.name] = this.value;
		   	window.localStorage.setItem('employee', JSON.stringify(employeeData));
		});
    })
</script>
<div id="container">
	<div id="logo" onclick="window.location.href='index.cfm'"><img src="images/logo.png"></div>
	<div id="main_section" class="clearfix">
	    <div id="navigation">
		    <button type="button" class="nav_button end_left" onclick="window.location.href='index.cfm?newEmployee'">New Employee Sheet</button>
		    <button type="button" class="nav_button" onclick="window.location.href='index.cfm?residency'">Residency Certification</button>
		    <button type="button" class="nav_button" onclick="window.location.href='index.cfm?reporting'">New Hire Report</button>
		    <button type="button" class="nav_button" onclick="window.location.href='index.cfm?affirmativeAction'">Affirmative Action</button>
		    <button type="button" class="nav_button end_right" onclick="window.location.href='index.cfm?insurance'">Insurance</button>
		</div>
		<div id="content">
		<cfif isDefined('URL.application')>
			<cfinclude template="screens/newEmployee.cfm">
		<cfelseif isDefined('URL.residency')>
			<cfinclude template="screens/residency.cfm">
		<cfelseif isDefined('URL.reporting')>
			<cfinclude template="screens/reporting.cfm">
		<cfelseif isDefined('URL.affirmativeAction')>
			<cfinclude template="screens/affirmativeAction.cfm">
		<cfelseif isDefined('URL.insurance')>
			<cfinclude template="screens/insurance.cfm">
		<cfelse>
			<!--if the url only contains the template variable and not a subTab variable, then load the first button by default so we don't load a blank page-->
			<cfinclude template="screens/newEmployee.cfm">
		</cfif>
	</div>
</div>
