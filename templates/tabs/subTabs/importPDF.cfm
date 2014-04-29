<div id="uploadPDF">
	<cfif isDefined("fileUpload")>
	  <cffile action="upload"
	     fileField="fileUpload"
	     destination="C:\ColdFusion10\cfusion\wwwroot\stem\uploads">
	     <p>Thankyou, your file has been uploaded.</p>
	</cfif>
	<form enctype="multipart/form-data" method="post">
		<input type="file" name="fileUpload" />
		<input type="submit" value="Upload File" />
	</form>
	<div id="uploadedForms">
		<!--Repeat over files and output them-->
	
	</div>
</div>
