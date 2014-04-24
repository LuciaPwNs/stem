<style type="text/css">
	#employee_info {
		width: 98% !important;
	}
</style>
<script type="text/javascript">
	//This needs renamed *ASL
	function go () {
		printPage('employeeLogin', window.localStorage.newestEmployee);
	}


	$(document).ready(function(){

		$('#newEmployee').submit(function (e) {
		    e.preventDefault();
		    addNewEmployee($(this).children('#newEmpFirstName').val(), $(this).children('#newEmpLastName').val());
		});

		$('#newAdmin').submit(function (e) {
		    e.preventDefault();
		    console.log('$(this).serialize()', $(this).serialize());
		    var newAdminInfo = $(this).serializeArray();
		    addNewAdmin(newAdminInfo[0].value,newAdminInfo[1].value, newAdminInfo[2].value);
	    });

		$(document).on('submit', '.editAdmin', function (e) {
			e.preventDefault();
			var clickedButton =  $( ":input[type=submit]:focus");
		    //serialize form data
		   	var newAdminInfo = $(this).serializeArray();
		    editAdmin(newAdminInfo[0].value, newAdminInfo[1].value, newAdminInfo[2].value, newAdminInfo[3].value, clickedButton[0].value);
		});

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