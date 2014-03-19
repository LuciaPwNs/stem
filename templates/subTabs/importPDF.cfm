<div id="uploadedForms">
		<!--Repeat over files and output them-->
</div>
<span id="uploadPDFButton">
<cffileupload  
    url="uploadFile.cfm"
    progressbar="true"
    name="myupload"
    addButtonLabel = "Add File"
    clearButtonlabel = "Clear it"
    hideUploadButton = "true"
    width=600
    height=400
    title = "File Upload"
    maxuploadsize="10"
    extensionfilter="*.jpg, *.png, *.flv, *.txt"
    BGCOLOR="##FFFFFF"
    MAXFILESELECT=10
    UPLOADBUTTONLABEL="Upload now"/>
	<!--- This is how you send the file to the file destination
	<cffile action="upload" destination="\uploads" >Upload File</cffile>
	--->
</span>