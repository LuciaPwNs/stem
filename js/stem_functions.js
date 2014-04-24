
function getEmployeeData (selectedEmployee) {
	if (typeof selectedEmployee !== 'undefined') {
		$.ajax({
		    type: 'GET',
		    url: 'components/stem_components.cfc?method=getEmployeeData&selectedEmployee=' + selectedEmployee,
		    dataType: "json",
		    beforesend: function () {
		    	
		    	//if current selected employee is loaded dont get data again.
				var employee = JSON.parse(window.localStorage.employee);
				if(employee['id'] === selectedEmployee){
					return false;
				} else {
					return true;
				}
		    },
		    success: function (data) {
				//console.log('data', data);
	    		var employee = {};
	    		for(var i = 0; i < data.COLUMNS.length; i++) {
	    			employee[data.COLUMNS[i].toLowerCase()] = data.DATA[0][i];
	    		}

	    		window.localStorage.setItem('employee', JSON.stringify(employee));

	    		console.log('localStorage.employee', JSON.parse(localStorage.employee));
	    		$(document).trigger('employeeDataReady');
	    		location.reload();
			},
			error: function(jqXHR, textStatus) {
				console.log( "Request failed: " + textStatus );
			}
		})
	}
}

function saveEmployeeData (formID) {
	console.log('Form Id', formID);

	$.ajax({
	    type: 'POST',
	    url: 'components/stem_components.cfc?method=saveEmployeeData&formBeingUpdated=' + formID,
	    contentType: 'application/json',
	    data: window.localStorage.employee,
	})
	.done(function (data) {
		//fetch employee data and refresg form data???

		//display message informing the user what is going on
		console.log('data',data);
		
		$('#message').html(data);
		//after the message fade it out after like 5 seconds
		

	})
	.fail(function(jqXHR, textStatus) {
		console.log( "Request failed: " + textStatus );
	});
	
}

function searchForEmployee (searchValue) {
	$.ajax({
	    type: 'GET',
	    url: 'components/stem_components.cfc?method=searchForEmployee&searchValue=' + searchValue,
	    dataType: "json"
	})
	.done(function (data) {
		//DO THIS!! display page that they can pick which employee to view/edit
		console.log('searched', data);
		//Update selectedEmployee to hold id of searched employee
		window.localStorage.selectedEmployee = data;
		$(document).trigger('reloadEmployeeData');
		getEmployeeData(data);

	})
	.fail(function(jqXHR, textStatus) {
		console.log( "Request failed: " + textStatus );
	});

}

function addNewEmployee (first_name, last_name) {
	$.ajax({
	    type: 'POST',
	    url: 'components/stem_components.cfc?method=addNewEmployee&first=' + first_name + '&last=' + last_name,
	    contentType: 'application/json',
	})
	.done(function (data) {
		window.localStorage.setItem('newestEmployee', JSON.stringify(data));
		$('#message').html('<a id="printEmployeeLogin"  onclick="javascript:go()">Click here to print employees login information.</a>');

	})
	.fail(function(jqXHR, textStatus) {
		console.log( "Request failed: " + textStatus );
	});
}

function addNewAdmin (first_name, last_name, password) {
	$.ajax({
	    type: 'POST',
	    url: 'components/stem_components.cfc?method=addNewAdmin&first=' + first_name + '&last=' + last_name + '&password=' + password,
	    contentType: 'application/json',
	})
	.done(function (data) {
		location.reload();
	})
	.fail(function(jqXHR, textStatus) {
		console.log( "Request failed: " + textStatus );
	});
}

function editAdmin (ID, first_name, last_name, password) {
	$.ajax({
		type: 'POST',
		url: 'components/stem_components.cfc?method=editAdmin&first=' + first_name + '&last=' + last_name,
		contentType: 'application/json',
	})
	.done(function (data) {
		window.localStorage.setItem('newestEmployee', JSON.stringify(data));
		console.log(window.localStorage.newestEmployee);
		$('#message').html('<a id="printEmployeeLogin"  onclick="javascript:go()">Click here to print employees login information.</a>');

	})
	.fail(function(jqXHR, textStatus) {
		console.log( "Request failed: " + textStatus );
	});
}

function getAdmins () {
	$.ajax({
	    type: 'GET',
	    url: 'components/stem_components.cfc?method=getAdminData',
	    dataType: 'json',
	})
	.done(function (data) {
		
		var admins = [];
		for(var t = 0; t < data.DATA.length; t++) {
			admins[t] = {};
			for(var i = 0; i < data.COLUMNS.length; i++) {
				admins[t][data.COLUMNS[i].toLowerCase()] = data.DATA[t][i];
			}
		}

		//foreach admin create a row of admin stuff
		for(var i = 0; i < admins.length; i++) {
			//the "\" at the end of each line escapes the line break so you dont get an error.
			$('#editAdmin').append('\
				<form class="editAdmin">\
					<input type="hidden" class="editAdminID" value="' + admins[i]["id"] + '"/>\
					<input type="text" class="editAdminFirstName" placeholder="First Name" value="' + admins[i]["first_name"] + '"/>\
					<input type="text" class="editAdminLastName" placeholder="Last Name" value="' + admins[i]["last_name"] + '"/>\
					<input type="text" class="editAdminPassword" placeholder="Password" value="' + admins[i]["password"] + '"/>\
					<input type="submit" name="save" value="Save"/>\
					<input type="submit" name="delete" value="Delete"/>\
				</form>\
			');
		}

	})
	.fail(function(jqXHR, textStatus) {
		console.log( "Request failed: " + textStatus );
	});
}


function printPage (page, dataToPrint) {
	$.ajax({
	    type: 'POST',
	    url: 'components/stem_components.cfc?method=printPage&page=' + page,
	    contentType: 'application/json',
	    data: JSON.parse(window.localStorage.newestEmployee),
	})
	.done(function (data) {
		//after the pdf is created open a new window that displays it
		window.open('output.pdf');

	})
	.fail(function(jqXHR, textStatus) {
		console.log( "Request failed: " + textStatus );
	});
}