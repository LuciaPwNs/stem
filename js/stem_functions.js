
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

function addNewEmployee (first_name, last_name) {
	$.ajax({
	    type: 'POST',
	    url: 'components/stem_components.cfc?method=addNewEmployee&first=' + first_name + '&last=' + last_name,
	    contentType: 'application/json',
	    //data: window.localStorage.employee,
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