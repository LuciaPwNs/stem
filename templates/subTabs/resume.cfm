<div id="employee_info">
	
	<cfquery datasource="stem" name="basic_employee_info" result="employee" debug="true">
		SELECT * FROM employee;
	</cfquery>
	<cfoutput query="basic_employee_info" startrow="1">
		Id: #id#<br/>
		First Name: #first_name#<br/>
		Last Name: #last_name#<br/>
		Address: #address#<br/>
		City: #city#<br/>
		State: #state#<br/>
		Cell: #cell_phone#<br/>
	</cfoutput>
	
</div>