<cfcomponent>

<!---Search for employee--->
    <cffunction name="searchForEmployee" access="remote" returnFormat="JSON">
		<cfargument name="searchValue" type="string" required="yes">
    	<cfquery datasource="stem" name="employeeSearch" result="employee" debug="true" cachedWithin = "#CreateTimeSpan(0, 0, 60, 0)#">
			SELECT * FROM employee where id = #searchValue#;
		</cfquery>
		<!---output file that displays list of employees to pick from? After user clicks it redirect and set selectedEmployee--->
		<cfreturn employeeSearch.id>
    </cffunction>

<!--Load Employee data --->
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



<!---Save Employee Data--->
    <cffunction name="saveEmployeeData" access="remote" returnFormat="JSON">

    	<!---Get the data from the ajax request--->
    	<!---Get the form id so we know what tables we are going to use to save the data--->
    	<!---Case statement to send function down appropriate saving path?--->
    	
    	<cfargument name="formBeingUpdated" type="string" required="yes">

    	<cfset employeeData = deserializeJSON(toString(getHttpRequestData().content)) />

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

<!---Add new Employee--->
    <cffunction name="addNewEmployee" access="remote" returnFormat="JSON">
    	<cfargument name="first" type="string" required="true">
    	<cfargument name="last" type="string" required="true">
    	<cfscript>
    		var password = RandString(5);

    		var 
    	</cfscript>
    	<cfquery datasource="stem" name="saveEmployee" result="queryStatus" debug="true">
			INSERT INTO employee (first_name, last_name, password)
				VALUES('#first#', '#last#', '#password#');
		</cfquery>
		<cfquery datasource="stem" name="getLastEmployeeCreated" debug="true">
			SELECT LAST_INSERT_ID();
		</cfquery>
		<cfdump var="#getLastEmployeeCreated#">
    	<cfdump var="#password#">

    	<cfreturn 
    	<!---Return the new employees stem id along with name and password so they can give that to the employee--->
	</cffunction>	

<!--- Generate random strings of specified length --->
	<cffunction name="RandString" output="no" returntype="string">
		<cfargument name="length" type="numeric" required="yes">
	
	    <!--- Local vars --->
	    <cfset var result="">
	    <cfset var i=0>
	
	    <!--- Create string --->
	    <cfloop index="i" from="1" to="#ARGUMENTS.length#">
	        <!--- Random character in range A-Z --->
	        <cfset result=result&Chr(RandRange(65, 90))>
	    </cfloop>
	
	    <!--- Return it --->
	    <cfreturn result>
	</cffunction>

</cfcomponent>