<style type="text/css">
	#employee_info {
		width: 98% !important;
	}
</style>
<script type="text/javascript">
	var printThis;
	$(document).ready(function(){
		//since the element is there when the page loads, we can directly bind an event to the form that fires when the its submitted
		$('#newEmployee').submit(function (e) {
		    e.preventDefault();
		    var newEmployeeInfo = $(this).serializeArray();
		    addNewEmployee(newEmployeeInfo[0].value, newEmployeeInfo[1].value);
		});

		//since the element is there when the page loads, we can directly bind an event to the form that fires when the its submitted
		$('#newAdmin').submit(function (e) {
		    e.preventDefault();
		    var newAdminInfo = $(this).serializeArray();
		    addNewAdmin(newAdminInfo[0].value,newAdminInfo[1].value, newAdminInfo[2].value);
	    });

		//We CAN NOT directly attach an event to the "edit admin" form since its not there when the page loads.
		//So we attach it to the document.  
		$(document).on('submit', '.editAdmin', function (e) {
			e.preventDefault();
			var clickedButton =  $( ":input[type=submit]:focus");
		    //serialize form data
		   	var newAdminInfo = $(this).serializeArray();
		    editAdmin(newAdminInfo[0].value, newAdminInfo[1].value, newAdminInfo[2].value, newAdminInfo[3].value, clickedButton[0].value);
		});

		printThis = function (page) {
			printPage(page, window.localStorage.newestEmployee);
		}

		//fetch admin records when page loads
		getAdmins();

	})
	
</script>
<div id="employee_info">
	<h2>Create New Employee</h2>
	<div id="createNewEmployee">
		<form id="newEmployee">
			<input type="text" name="newEmpFirstName" placeholder="First Name"/>
			<input type="text" name="newEmpLastName" placeholder="Last Name"/>
			<input type="submit" value="Create Employee"/>
		</form>
		<div id="message"></div>
	</div>
	<h2>Edit Admin Accounts</h2>
	<div id="editAdmins">
		<h3>Create New Admin</h3>
		<form id="newAdmin">
			<input type="text" name="newAdminFirstName" placeholder="First Name"/>
			<input type="text" name="newAdminLastName" placeholder="Last Name"/>
			<input type="text" name="newAdminPassword" placeholder="Password"/>
			<input type="submit" value="Create Admin"/>
		</form>
		<hr/>
		<h3>Edit Admin</h3>
		<div id="editAdmin">
		</div>
	</div>
</div>