<style type="text/css">
	#employee_info {
		width: 98% !important;
	}
</style>
<script type="text/javascript">
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
		    addNewAdmin($(this).children('#newAdminFirstName').val(), $(this).children('#newAdminLastName').val(), $(this).children('#newAdminPassword').val());
		});

		$('.editAdmin').submit(function (e) {
			console.log(this);
		    e.preventDefault();
		    editAdmin($(this).children('#newAdminFirstName').val(), $(this).children('#newAdminLastName').val(), $(this).children('#newAdminPassword').val());
		});
		//fetch admin records
		getAdmins();

	})
	
</script>
<div id="employee_info">
	<h2>Create New Employee</h2>
	<div id="createNewEmployee">
		<form id="newEmployee">
			<input type="text" id="newEmpFirstName" placeholder="First Name"/>
			<input type="text" id="newEmpLastName" placeholder="Last Name"/>
			<input type="submit" value="Create Employee"/>
		</form>
		<div id="message"></div>
	</div>
	<h2>Edit Admin Accounts</h2>
	<div id="editAdmins">
		<h3>Create New Admin</h3>
		<form id="newAdmin">
			<div id="newAdmin">
				<input type="text" id="newAdminFirstName" placeholder="First Name"/>
				<input type="text" id="newAdminLastName" placeholder="Last Name"/>
				<input type="text" id="newAdminPassword" placeholder="Password"/>
				<input type="submit" value="Create Admin"/>
			</div>
		</form>
		<hr/>
		<h3>Edit Admin</h3>
		<div id="editAdmin">
			
		</div>
	</div>
</div>