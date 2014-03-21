<cfif isDefined(session.selectedEmployee)>
	<!--- Use session variable to pull employee data from data source--->
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
	


</cfif>
<div id="employee_info">
	<cfform>
		<h2> Affirmative Action Voluntary Information</h3> 
			
		<p>We consider all applicants for positions without regard to race, color, 
		religion, sex, national origin, citizenship, age, mental or physical disabilities, 
		vietem/reserve/national guard or any other similarly protected status. We also 
		comply with all applicable laws governing employment practices and do not discriminate 
		on the basis of any unlawful criteria.</p>
		
		<p>To be completed by applicant on a voluntary basis. In an effort to comply with 
		requirements regarding government recordkeeping. Reporting and other legal obligations 
		which may not apply. We invite you to complete this applicant data survey. Providing 
		this information is strictly voluntary. Failure to provide it will not subject you 
		to any adverse personnel decision or action. Your cooperation is appreciated.</p>
		
		<p>Please be advised that this survey is not part of your official application for 
		employment. It will not be used in any hiring decision. The information will be used 
		and kept confidential in accordance with applicable laws and regulations.</p>
		
		<h3>Applicant Information</h3> 
			Name: <cfinput type="text" name="name" size="50" float="right"><br>
			
			Address: <cfinput type="text" name="address" size="50"><br>
			<cfinput type="text" name="address" size="50"><br>
			<cfinput type="text" name="address" size="50"><br>
			
			Telephone: <cfinput type="text" name="telephone" size="10"><br>
			
			<cfselect name="positions_applied">
		<option value="Job1">Job1
		<option value="Job2">Job2
		<option value="Job3">Job3
		<option value="Job4">Job4
		<option value="Job5">Job5
		</cfselect>

		<div style= "float:right;">
		<cfselect name="Referral Source">
		<option value="referal1">referal1
		<option value="referal2">referal2
		<option value="referal3">referal3
		<option value="referal4">referal4
		<option value="referal5">referal5
		</cfselect>
		</div>
	</cfform>
	</div>

