<div id="uploadPDF">
	<cfif isDefined("fileUpload")>
	  	<cffile action="upload" fileField="fileUpload" destination="#ExpandPath('uploads')#" nameconflict="overwrite">
	    <script type="text/javascript">location.reload();</script>
	</cfif>
	<form method="post" enctype="multipart/form-data">
		<input type="file" name="fileUpload" />
		<input type="submit" value="Upload File" />
	</form>

	<div id="uploadedForms">
		<!--Repeat over files and output them-->
	</div>
</div>
