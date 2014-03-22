
function loadForm () {
	if (typeof document.session.selectedemployee !== 'undefined') {
		$.ajax({
		    type: 'GET',
		    url: '',
		    dataType: "json"
		})
		.done(function (data) {
    		document.session = data;
    		console.log('document.cookie', document.cookie);
			console.log('document.session', document.session);
			$(document).trigger('employeeLoaded');
		})
  		.fail(function(jqXHR, textStatus) {
			console.log( "Request failed: " + textStatus );
		});
	}
}
