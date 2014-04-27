<div id="uploadedForms">
		<!--Repeat over files and output them-->
	
</div>
<div id="uploadPDFButton">
	<!---
	<form id="uploadPDF" enctype="multipart/form-data" method="post">
		<input type="file" name="FiletoUpload"><br/>
		<input type="submit" value="Upload"> 
	</form>
--->
	<cfif isDefined("fileUpload")>
	  <cffile action="upload"
	     fileField="fileUpload"
	     destination="C:\ColdFusion10\cfusion\wwwroot\stem\uploads">
	     <p>Thankyou, your file has been uploaded.</p>
	</cfif>
	<form enctype="multipart/form-data" method="post">
		<input type="file" name="fileUpload" /><br />
		<input type="submit" value="Upload File" />
	</form>
</div>