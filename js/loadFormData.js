
function getEmployeeData (selectedEmployee) {
	if (typeof selectedEmployee !== 'undefined') {
		$.ajax({
		    type: 'GET',
		    url: 'components/load.cfc?method=getEmployeeData&selectedEmployee=' + selectedEmployee,
		    dataType: "json",
		    beforeSend: function () {
		    	
		    	//if current selected employee is loaded dont get data again.
		    	if(window.localStorage.employee['id'] === selectedEmployee){
		    		return false;
		    	}
		    }
		})
		.done(function (data) {
			//console.log('data', data);
    		document.employee = {};
    		for(var i = 0; i < data.COLUMNS.length; i++) {
    			document.employee[data.COLUMNS[i].toLowerCase()] = data.DATA[0][i];
    		}

    		window.localStorage.setItem('employee', JSON.stringify(document.employee));

    		console.log('localStorage.employee', localStorage.employee);
    		$(document).trigger('employeeDataReady');
		})
  		.fail(function(jqXHR, textStatus) {
			console.log( "Request failed: " + textStatus );
		});
	}
}

function searchForEmployee (searchValue) {
	$.ajax({
	    type: 'GET',
	    url: 'components/load.cfc?method=searchForEmployee&searchValue=' + searchValue,
	    dataType: "json"
	})
	.done(function (data) {
		//DO THIS!! display page that they can pick which employee to view/edit
		console.log('searched', data);
		//Update selectedEmployee to hold id of searched employee
		document.session.selectedEmployee = data;
		$(document).trigger('reloadEmployeeData');
		getEmployeeData(data);

	})
	.fail(function(jqXHR, textStatus) {
		console.log( "Request failed: " + textStatus );
	});

}

function saveEmployeeData (formID) {

	var values = {};
    $.each($('#formID').serializeArray(), function(i, field) {
        values[field.name] = field.value;
    });

    /*
	if (typeof searchValue !== 'undefined') {
		$.ajax({
		    type: 'GET',
		    url: 'components/load.cfc?method=searchForEmployee&searchValue=' + searchValue,
		    dataType: "json"
		})
		.done(function (data) {
    		document.employee = data;
    		console.log('document.employee', document.employee);
		})
  		.fail(function(jqXHR, textStatus) {
			console.log( "Request failed: " + textStatus );
		});
	}*/
}
			