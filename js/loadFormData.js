
function getEmployeeData (selectedEmployee) {
	if (typeof selectedEmployee !== 'undefined') {
		$.ajax({
		    type: 'GET',
		    url: 'components/load.cfc?method=getEmployeeData&selectedEmployee=' + selectedEmployee,
		    dataType: "json"
		})
		.done(function (data) {
    		document.employee = data;
    		console.log('document.employee', document.employee);
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
		document.session.selectedemployee = data;
		$(document).trigger('cfSessionLoaded');

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
			