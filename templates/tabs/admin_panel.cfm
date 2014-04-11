<!-- 
	create a new employee
	get first and last name
	get any other info they want to input when registering someone
	generate the employee stem id using their name to make it random? maybe.
	generate password
	save employee record and print ticket? i think they are getting a ticket with the employee name and password right?

	add / delete / change admin stuff
	pull current admins
	ouput them in a list with editable fields and an x to delete them 
	drop down for roles






-->
<script type="text/javascript">
	
	$(document).ready(function(){
		function addNewEmployee () {
			///make add new employee function work
			dfdsfd
			console.log('In addNewEmployee function');
			var newEmployeePassword = (Math.random().toString(36)+'00000000000000000').slice(2, N+2);
			console.log('newEmployeePassword',newEmployeePassword);
		}

		function editAdmins () {
			console.log('In editAdmins function');
		}

		function loadAdminAccounts () {
			//get admin account via ajax
			//create elements in editAdmins form (admin first and last name/password?/(delete/save button)
			console.log('In loadAdminAccounts function');
		}

	})
	
</script>
<div id="employee_info">
	<div id="createNewEmployee">
		<h2>Create a new employee</h2>
		<form id="newEmployee" action="javascript:addNewEmployee()">
			<input type="text" id="newEmpFirstName" placeholder="First Name"/>
			<input type="text" id="newEmpLastName" placeholder="Last Name"/>
			<input type="submit" value="Create Employee"/>
		</form>
	</div>
	<div id="editAdmin">
		<h2>Edit Admin Accounts</h2>
		<form id="editAdmins" action="javascript:editAdmins()">
			<div class="newAdmin">
				<input type="text" id="newAdminFirstName" placeholder="First Name"/>
				<input type="text" id="newAdminFirstName" placeholder="Last Name"/>
				<input type="text" id="newAdminFirstName" placeholder="Password"/>
				<input type="submit" value="Create Admin"/>
			</div>
		</form>
	</div>	

</div>