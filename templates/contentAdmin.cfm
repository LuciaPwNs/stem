<script type="text/javascript">
	$(document).ready(function() {
		//Load form when the document is completely done loading
		//console.log('Currently Loaded Employee', JSON.parse(window.localStorage.employee));

		$('form[name="employeeDataForm"] :input').each(function() {
	        if (typeof window.localStorage.employee !== 'undefined') {
		        //use this.name to get the value for that field from document.employee
		        var employeeData = JSON.parse(window.localStorage.employee);
		      	//ignore the submit input
		        if ($(this).attr('type') !== "submit") {
		        	//update everything that isnt a submit button
		        	$(this).val(employeeData[this.name]);
	        	}
	        }
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

	    //When the event "cfSessionLoaded" fires us use the session variable to get employee data
		//Load employee data when session.selectedEmployee is set or after search
		$(document).on( "cfSessionLoaded", "reloadEmployeeData", function() {
	        getEmployeeData(window.localStorage.selectedEmployee);
	    });
	    

		//This should happen when an admin saves a form that updates employee information.
		$('form[name="employeeDataForm"]').on('submit', function(event) {
		    //when the form a form submits save data to correct table
		    event.preventDefault();
		    console.log('submitting form!');
		    console.log("$(this).attr('id')", $(this).attr('id'));
		    saveEmployeeData($(this).attr('id'));
		});


		//This should happen when an admin saves a form that updates employee information.
		$('form[name="employeeDataForm"] :input').change(function(){
			var employeeData = JSON.parse(window.localStorage.employee);
			employeeData[this.name] = this.value;
		   	window.localStorage.setItem('employee', JSON.stringify(employeeData));
		});
	    
	})  
</script>
<script type="text/javascript" src="js/stem_functions.js"></script>
<div id="container">
	
	<div id="search_box">
	    <script type="text/javascript">
	        $(document).ready(function(){
	            //When the webpage is ready, bind javascript function to the button on the search box
	            $("#searchSubmit").click(function () {
	                searchForEmployee($('#searchValue').val());
	            });
	        })
	    </script>
	    <form id='searchBox'>
	        <a id="clear" href="javascript:clearEmployee()">Clear</a>
	        <input type="text" id="searchValue">
	        <input type="button" id="searchSubmit" value="search">
	        search for employee 123 (only one in database)
	    </form>
	</div>

	<div id="logo" onclick="window.location.href='index.cfm'"><img src="images/logo.png"></div>

	<div id="currentEmployeeInfo">
	    <div id="employeePhoto">
	        <img src="images/profile_default.png"/>
	    </div>
	    <div id="basicInfo">
	        ID: <span name="id"></span><br/>
	        First Name: <span name="first_name"></span><br/>
	        Last Name: <span name="last_name"></span><br/>
	        Address: <span name="address_1"></span><br/>
	                 <span name="address_2"></span><br/> 
	    </div>
	</div>
	<div id="admin_panel">
		<button type="button" class="nav_button end_left" onclick="window.location.href='index.cfm?adminPanel'">Admin Panel</button>
	</div>
	<div id="main_section" class="clearfix">
	    <div id="navigation">
	        <button type="button" class="nav_button end_left" onclick="window.location.href='index.cfm?application'">Application</button>
	        <button type="button" class="nav_button" onclick="window.location.href='index.cfm?employee'">Employee</button>
	        <button type="button" class="nav_button" onclick="window.location.href='index.cfm?calendar'">Calendar</button>
	        <button type="button" class="nav_button" onclick="window.location.href='index.cfm?performance'">Performance</button>
	        <button type="button" class="nav_button" onclick="window.location.href='index.cfm?insurance'">Insurance</button>
	        <button type="button" class="nav_button" onclick="window.location.href='index.cfm?retirement'">Retirement</button>
	        <button type="button" class="nav_button end_right" onclick="window.location.href='index.cfm?misc'">Misc</button>
	    </div>
		<div id="content">
			<cfif isDefined('URL.application')>
				<cfinclude template="tabs/application.cfm">
			<cfelseif isDefined('URL.employee')>
				<cfinclude template="tabs/employee.cfm">
			<cfelseif isDefined('URL.calendar')>
				<cfinclude template="tabs/calendar.cfm">
			<cfelseif isDefined('URL.performance')>
				<cfinclude template="tabs/performance.cfm">
			<cfelseif isDefined('URL.insurance')>
				<cfinclude template="tabs/insurance.cfm">
			<cfelseif isDefined('URL.retirement')>
				<cfinclude template="tabs/retirement.cfm">
			<cfelseif isDefined('URL.misc')>
				<cfinclude template="tabs/misc.cfm">
			<cfelseif isDefined('URL.adminPanel')>
				<cfinclude template="tabs/admin_panel.cfm">	
			<cfelse>
				<!--if the url only contains the template variable and not a subTab variable, then load the first button by default so we don't load a blank page-->
				<cfinclude template="tabs/application.cfm">
			</cfif>
		</div>
	</div>
</div>
