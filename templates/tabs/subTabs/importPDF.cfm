<script type="text/javascript">
//define function name so it can be called out of document.ready
var deletePDF, refresh;
$(document).ready(function(){
	if(typeof employeeData !== 'undefined'){
		$("#uploadPDF form").attr('action', "/stem/components/stem_components.cfc?method=uploadFile&file=" + $("#uploadPDF").parent().attr('id') + '&id=' + employeeData['employee.id']);
	
		//load any pdfs they might have saved into the uploadedForms div
	    $('#uploadedForms').each(function() {
	    	var pdfName = $(this).parent().parent().attr('id');
	    	var employeeData = JSON.parse(window.localStorage.employee);
	    	
	    	if(employeeData[pdfName]){
				$(this).append('<div class="pdfContainer">' + 
				'<span class="delete" onclick="javascript:deletePDF(\'' + 
				pdfName +
				'\', \'' +
				employeeData[pdfName] + 
				'\'' +
				')">X</span>' + 
				'<iframe src="/stem/uploads/' + 
				employeeData[pdfName] +
				'"></iframe></div>');
			}
	    })

	    deletePDF = function(pdf, file){
			var employeeData = JSON.parse(window.localStorage.employee);
			employeeData[pdf] = ""; 
			window.localStorage.setItem('employee', JSON.stringify(employeeData));
			saveEmployeeData();

			$.ajax({
			    type: 'POST',
			    url: 'components/stem_components.cfc?method=deleteFile&file=' + file + '&id=' + employeeData['employee.id'],		    
			})
			.done(function (data) {
				console.log('data',data);
				$('#message').html(data);
				getEmployeeData(employeeData['employee.id']);
				location.reload();
			})
			.fail(function(jqXHR, textStatus) {
				console.log( "Request failed: " + textStatus );
			});
		}

		refresh = function () {
			searchForEmployee(JSON.parse(window.localStorage.selectedEmployee));
		}
	}
})
</script>
<div id="uploadPDF">
	<form method="post" enctype="multipart/form-data" action="">
		<input type="file" id="file" name="fileUpload" />
		<input type="submit" value="Upload File" /><input type="button" value="Refresh Files" onclick="javascript:refresh()"/>
	</form>

	<div id="uploadedForms">
		<!--Repeat over files and output them-->
	</div>
</div>
