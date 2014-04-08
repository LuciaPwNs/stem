<cfcomponent>

	<cffunction name="getEmployeeData" access="remote" returnFormat="JSON">
		<cfargument name="selectedEmployee" type="string" required="yes">
		<cfquery datasource="stem" name="basic_employee_info" result="employee" debug="true" cachedWithin = "#CreateTimeSpan(0, 0, 60, 0)#">
			SELECT * FROM employee where id = #selectedEmployee#;
		</cfquery>
		<cfreturn basic_employee_info>
	</cffunction>

	<cffunction name="getSession" access="remote" returnFormat="JSON">
		<cftry>
		    <cfreturn session>
		    <cfcatch>
		    </cfcatch>
		</cftry>
	</cffunction>

    <cffunction name="searchForEmployee" access="remote" returnFormat="JSON">
		<cfargument name="searchValue" type="string" required="yes">
    	<cfquery datasource="stem" name="employeeSearch" result="employee" debug="true" cachedWithin = "#CreateTimeSpan(0, 0, 60, 0)#">
			SELECT * FROM employee where id = #searchValue#;
		</cfquery>
		<!---output file that displays list of employees to pick from? After user clicks it redirect and set selectedEmployee--->
		<cfreturn employeeSearch.id>
    </cffunction>

    <cffunction name="saveEmployeeData" access="remote" returnFormat="JSON">

    	<!---Get the data from the ajax request--->
    	<!---Get the form id so we know what tables we are going to use to save the data--->
    	<!---Case statement to send function down appropriate saving path?--->
    	
    	<cfargument name="formBeingUpdated" type="string" required="yes">

    	<cfset employeeData = deserializeJSON(toString(getHttpRequestData().content)) />
    	<!---<cfdump var="#employeeData#" />--->
    	

    	<cfswitch expression="#LCase(formBeingUpdated)#"> 
		    <cfcase value="affirmativeaction">
		       	<cfquery datasource="stem" name="saveEmployee" result="queryStatus" debug="true">
					UPDATE employee SET 
						first_name = '#employeeData.first_name#',
						last_name = '#employeeData.last_name#',
						address_1 = '#employeeData.address_1#',
						address_2 = '#employeeData.address_2#',
						cell_phone = '#employeeData.cell_phone#' 
					WHERE id = '#employeeData.id#';
				</cfquery>
				
				<cfdump var="#queryStatus#"/>
				<cfif #queryStatus.recordcount# eq 1>
					<cfset status = 'User information saved!'>
				<cfelse>
					<cfset status = 'Something went wrong, contact tech support.'>
				</cfif>
				
		    </cfcase> 
		    <cfcase value="another form"> 
		       	<!---
		       	<cfquery datasource="stem" name="saveEmployee" result="employee" debug="true">
					UPDATE employee SET  WHERE id = #searchValue#;
				</cfquery>
				--->
		    </cfcase> 
		    <cfcase value="another form1"> 
		       	<!---
		       	<cfquery datasource="stem" name="saveEmployee" result="employee" debug="true">
					UPDATE employee SET  WHERE id = #searchValue#;
				</cfquery>
				--->
		    </cfcase> 
		    <cfdefaultcase> 
		        default
		    </cfdefaultcase> 
		</cfswitch> 

		

    	
		<!---output file that displays list of employees to pick from? After user clicks it redirect and set selectedEmployee--->
		<cfreturn #status#>
    </cffunction>

</cfcomponent>