<cfcomponent>

<!---Search for employee--->
    <cffunction name="searchForEmployee" access="remote" returnFormat="JSON">
		<cfargument name="searchValue" type="string" required="yes">
    	<cfquery datasource="stem" name="employeeSearch" result="employee" debug="true" cachedWithin = "#CreateTimeSpan(0, 0, 60, 0)#">
			SELECT * FROM employee WHERE id = #searchValue#;
		</cfquery>
		<!---output file that displays list of employees to pick from? After user clicks it redirect and set selectedEmployee--->
		<cfreturn employeeSearch.id>
    </cffunction>

<!---Load Employee data --->
	<cffunction name="getEmployeeData" access="remote" returnFormat="JSON">
		<cfargument name="selectedEmployee" type="string" required="yes">

		<cfquery datasource="stem" name="employee_data" result="basic_employee_info" debug="true">
			SELECT * FROM employee
			WHERE employee.id = #selectedEmployee#;
		</cfquery>

		<cfquery datasource="stem" name="employee_affirmative_action_data" result="" debug="true">
			SELECT * FROM employee_affirmative_action
			WHERE employee_affirmative_action.id = #selectedEmployee#;
		</cfquery>

		<cfquery datasource="stem" name="employee_health_welfare_data" result="" debug="true">
			SELECT * FROM employee_health_welfare
			WHERE employee_health_welfare.id = #selectedEmployee#;
		</cfquery>

		<cfquery datasource="stem" name="employee_health_welfare_dependents_data" result="" debug="true">
			SELECT * FROM employee_health_welfare_dependents
			WHERE employee_health_welfare_dependents.employee_id = #selectedEmployee#;
		</cfquery>

		<cfquery datasource="stem" name="employee_pension_plan_data" result="" debug="true">
			SELECT * FROM employee_pension_plan
			WHERE employee_pension_plan.id = #selectedEmployee#;
		</cfquery>

		<cfquery datasource="stem" name="employee_reference_data" result="" debug="true">
			SELECT * FROM employee_reference
			WHERE employee_reference.id = #selectedEmployee#;
		</cfquery>

		<cfquery datasource="stem" name="employee_stock_ownership_data" result="" debug="true">
			SELECT * FROM employee_stock_ownership
			WHERE employee_stock_ownership.id = #selectedEmployee#;
		</cfquery>

		<cfquery datasource="stem" name="employee_vacation_data" result="" debug="true">
			SELECT * FROM employee_vacation
			WHERE employee_vacation.id = #selectedEmployee#;
		</cfquery>

		<cfset data = [
			#employee_data#, 
			#employee_affirmative_action_data#, 
			#employee_health_welfare_data#, 
			#employee_health_welfare_dependents_data#,
			#employee_pension_plan_data#,
			#employee_reference_data#,
			#employee_stock_ownership_data#,
			#employee_vacation_data#
		]>
		<cfset employeeData = StructNew()>
		<cfloop array="#data#" index="query">
			<cfloop query="query">
				<cfscript>
					narrowQuery = REMatchNoCase("from\s*(.*?)\s*?where", query.getMetaData().getExtendedMetaData().sql);
					removedFrom = ReplaceNoCase(ToString(#narrowQuery[1]#), "from", "");
					removedWhere = ReplaceNoCase(ToString(#removedFrom#), "where", "");
					tableName = trim(ToString(#removedWhere#));
				</cfscript>
				<cfloop list="#query.columnlist#" index="field">
					<cfset employeeData[tableName & "." & LCASE(field)] = query[field][query.CurrentRow]>
				</cfloop>
			</cfloop>
		</cfloop>

		<cfreturn #employeeData#>
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
    	<!---!!!!IMPORTANT Nothing can be put between cffunction and the cfargument tag--->
    	<cfargument name="formBeingUpdated" type="string" required="no">
    	<cfset employeeData = deserializeJSON(toString(getHttpRequestData().content)) />
    	<cfdump var="#employeeData#">
    	<!---NOTE!!!!! We are just going to save all the fields everytime. that way we dont have to have
    	a bunch of redundent code--->
		<cfquery datasource="stem" name="saveEmployee" result="queryStatus">
			UPDATE employee SET 
				first_name = '#employeeData.employee.first_name#',
				last_name = '#employeeData.employee.last_name#',
				address_1 = '#employeeData.employee.address_1#',
				address_2 = '#employeeData.employee.address_2#',
				city = '#employeeData.employee.city#',
				state = '#employeeData.employee.state#',
				zip = '#employeeData.employee.zip#',
				social_security = '#employeeData.employee.social_security#',
			<!---	birthdate = '#employeeData.employee.birthdate#',  --->
				home_phone = '#employeeData.employee.home_phone#',
				driver_license = '#employeeData.employee.driver_license#',
				<!---issue_date = '#employeeData.employee.issue_date#',
				expiration_date = '#employeeData.employee.expiration_date#',
				driver_license_state = '#employeeData.driver_license_state#',--->
				email = '#employeeData.employee.email#',
				local_tax = '#employeeData.employee.local_tax#',
				marital_status = '#employeeData.employee.marital_status#'
			WHERE id = '#employeeData.employee.id#';
		</cfquery>

		<cfquery datasource="stem" name="saveEmployee" result="queryStatus">
			UPDATE employee_vacation SET 
				location = '#employeeData.employee_vacation.location#'
			WHERE id = '#employeeData.employee.id#';
		</cfquery>

		<!---
    	
    	<cfdump var="#employeeData#">
    	<cfswitch expression="#LCase(formBeingUpdated)#"> 
		    <cfcase value="affirmativeaction">
		       	<cfquery datasource="stem" name="saveEmployee" result="queryStatus">
					UPDATE employee SET 
						first_name = '#employeeData.employee.first_name#',
						last_name = '#employeeData.employee.last_name#',
						address_1 = '#employeeData.employee.address_1#',
						address_2 = '#employeeData.employee.address_2#',
						city = '#employeeData.employee.city#',
						state = '#employeeData.employee.state#',
						zip = '#employeeData.employee.zip#',
						social_security = '#employeeData.employee.social_security#',
						birthdate = '#employeeData.employee.birthdate#',
						home_phone = '#employeeData.employee.home_phone#',
						driver_license = '#employeeData.employee.driver_license#',
						issue_date = '#employeeData.employee.issue_date#',
						expiration_date = '#employeeData.employee.expiration_date#',
						driver_license_state = '#employeeData.driver_license_state#',
						email = '#employeeData.employee.email#',
						local_tax = '#employeeData.employee.local_tax#',
						marital_status = '#employeeData.employee.marital_status#'
					WHERE id = '#employeeData.employee.id#';
				</cfquery>
				
				<cfdump var="#queryStatus#"/>
				<cfif #queryStatus.recordcount# eq 1>
					<cfset queryStatus = 'User information saved!'>
				<cfelse>
					<cfset queryStatus = 'Something went wrong, contact tech support.'>
				</cfif>
				
		    </cfcase> 
		    <cfcase value="newEmployeeSheet"> 
		       	<cfquery datasource="stem" name="saveEmployee" result="queryStatus">
					UPDATE employee SET 
						first_name = '#employeeData.employee.first_name#',
						last_name = '#employeeData.employee.last_name#',
						address_1 = '#employeeData.employee.address_1#',
						address_2 = '#employeeData.employee.address_2#',
						city = '#employeeData.employee.city#',
						state = '#employeeData.employee.state#',
						zip = '#employeeData.employee.zip#',
						social_security = '#employeeData.employee.social_security#',
						birthdate = '#employeeData.employee.birthdate#',
						home_phone = '#employeeData.employee.home_phone#',
						driver_license = '#employeeData.employee.driver_license#',
						issue_date = '#employeeData.employee.issue_date#',
						expiration_date = '#employeeData.employee.expiration_date#',
						driver_license_state = '#employeeData.employee.driver_license_state#',
						email = '#employeeData.employee.email#',
						local_tax = '#employeeData.employee.local_tax#',
					<!---	deposit_account_number = '#employeeData.employee.deposit_account_number#',
						deposit_account = '#employeeData.employee.deposit_account#',--->
						marital_status = '#employeeData.employee.marital_status#'
					WHERE id = '#employeeData.employee.id#';
				</cfquery>
				
				<cfdump var="#queryStatus#"/>

				<cfif #queryStatus.recordcount# eq 1>
					<cfset status = 'User information saved!'>
				<cfelse>
					<cfset status = 'Something went wrong, contact tech support.'>
				</cfif>

		    </cfcase> 
		    <cfcase value="residencyCert"> 
		       	<cfquery datasource="stem" name="saveEmployee" result="employee">
					UPDATE employee SET  
						last_name = '#employeeData.employee.last_name#',
						first_name = '#employeeData.employee.first_name#',
						mi_initial = '#employeeData.employee.mi_initial#',
						address_1 = '#employeeData.employee.address_1#',
						address_2 = '#employeeData.employee.address_2#',
						city = '#employeeData.employee.city#',
						state = '#employeeData.employee.state#',
						zip = '#employeeData.employee.zip#',
						social_security = '#employeeData.employee.social_security#',
						day_phone = '#employeeData.employee.day_phone#',
						municipality = '#employeeData.employee.municipality#',
						county = '#employeeData.employee.county#',
						residency_psd_code = '#employeeData.employee.residency_psd_code#',
						eit_rate = '#employeeData.employee.eit_rate#',
						cert_date = '#employeeData.employee.cert_date#',
						home_phone = '#employeeData.employee.home_phone#',
						email = '#employeeData.employee.email#'
					WHERE id = #searchValue#;
				</cfquery>
				
				<cfdump var="#queryStatus#"/>

				<cfif #queryStatus.recordcount# eq 1>
					<cfset status = 'User information saved!'>
				<cfelse>
					<cfset status = 'Something went wrong, contact tech support.'>
				</cfif>
		    </cfcase>
		    <cfcase value="resume"> 
		       	<cfquery datasource="stem" name="saveEmployee" result="employee">
					UPDATE employee SET  
						resume_location = '#employee.resume_location#',
					WHERE id = #searchValue#;
				</cfquery>
				
				<cfdump var="#queryStatus#"/>

				<cfif #queryStatus.recordcount# eq 1>
					<cfset status = 'User information saved!'>
				<cfelse>
					<cfset status = 'Something went wrong, contact tech support.'>
				</cfif>
		    </cfcase> 
		    <cfdefaultcase> 
		        <cfset status = 'Opps! Something went wrong while saving employee data.'>
		    </cfdefaultcase> 
		</cfswitch> 
		--->
		<cfreturn >
    </cffunction>

<!---Add new Employee--->
    <cffunction name="addNewEmployee" access="remote" returnFormat="JSON">
    	<cfargument name="first" type="string" required="true">
    	<cfargument name="last" type="string" required="true">
    	<cfset password = RandString(5)>
    	<cfquery datasource="stem" name="newEmployee" result="result1" debug="true">
			INSERT INTO employee (first_name, last_name, password)
				VALUES('#first#', '#last#', '#password#');
		</cfquery>

		<cfquery datasource="stem" name="newEmployeeAffirativeAction" result="result2" debug="true">
			INSERT INTO employee_affirmative_action (id)
				VALUES('#result1.generated_key#');
		</cfquery>

		<cfquery datasource="stem" name="newEmployeeHealthWelfare" result="result2" debug="true">
			INSERT INTO employee_health_welfare (id)
				VALUES('#result1.generated_key#');
		</cfquery>

		<cfquery datasource="stem" name="newEmployeeHealthWelfareDependents" result="result2" debug="true">
			INSERT INTO employee_health_welfare_dependents (employee_id)
				VALUES('#result1.generated_key#');
		</cfquery>

		<cfquery datasource="stem" name="newEmployeePensionPlan" result="result2" debug="true">
			INSERT INTO employee_pension_plan (id)
				VALUES('#result1.generated_key#');
		</cfquery>

		<cfquery datasource="stem" name="newEmployeeRecords" result="result2" debug="true">
			INSERT INTO employee_reference (employee_id)
				VALUES('#result1.generated_key#');
		</cfquery>

		<cfquery datasource="stem" name="newEmployeeRecords" result="result2" debug="true">
			INSERT INTO employee_stock_ownership (id)
				VALUES('#result1.generated_key#');
		</cfquery>

		<cfquery datasource="stem" name="newEmployeeRecords" result="result2" debug="true">
			INSERT INTO employee_vacation (id)
				VALUES('#result1.generated_key#');
		</cfquery>
		<cfset newEmployee = structNew() /> 
		<cfset newEmployee.id =  '#result1.generated_key#' />
		<cfset newEmployee.first = '#first#' />
		<cfset newEmployee.last ='#last#' />
		<cfset newEmployee.password = '#password#' />

		<!---Return the new employees stem id along with name and password so they can give that to the employee--->
		<cfreturn newEmployee>
    
	</cffunction>	

<!--- Generate random strings of specified length --->
	<cffunction name="RandString" returntype="string">
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

<!---Generate PDF for admin to print out--->
	<cffunction name="printPage" access="remote" >
		<!---!!!!IMPORTANT Nothing can be put between cffunctiona and the cfargument tag--->
		<cfargument name="page" type="string">
		<cfset employeeData = deserializeJSON(toString(getHttpRequestData().content)) />		
		<cfswitch expression="#LCase(page)#"> 
		    <cfcase value="newemployee">
		       	<cfdocument format="pdf" name="employeeLoginInfo" filename="#ExpandPath('/stem/')#output.pdf" overwrite="yes">
	       			<div>
						First Name: <cfoutput>#employeeData.first#</cfoutput> <br/>
						Last Name: <cfoutput>#employeeData.last#</cfoutput> <br/>
						ID: <cfoutput>#employeeData.id#</cfoutput> <br/>
						Password: <cfoutput>#employeeData.password#</cfoutput> <br/>	
	       			</div>
				</cfdocument>
			</cfcase> 
		    <cfcase value="newEmployeeSheet"> 
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
	
	
		<cfreturn>
	</cffunction>

<!---Get admin records --->
	<cffunction name="getAdminData" access="remote" returnFormat="JSON">
		<cfquery datasource="stem" name="getAdminRecords" result="admins" debug="true" >
			SELECT id, first_name, last_name, password FROM admins;
		</cfquery>
		<cfreturn getAdminRecords>
	</cffunction>

<!---Add new admin--->
	<cffunction name="addNewAdmin" access="remote">
    	<cfargument name="first" type="string" required="true">
    	<cfargument name="last" type="string" required="true">
    	<cfargument name="password" type="string" required="true">
    	
    	<cfquery datasource="stem" name="createNewAdmin" result="status" debug="true" >
			INSERT INTO admins (first_name, last_name, password, roles)
				VALUES ('#first#', '#last#', '#password#', 'admin');
		</cfquery>
		<cfreturn status>
	</cffunction>

<!---Edit admin--->
	<cffunction name="editAdmin" access="remote">
		<cfargument name="id" type="string" required="true">
		<cfargument name="first" type="string" required="true">
    	<cfargument name="last" type="string" required="true">
    	<cfargument name="password" type="string" required="true">
    	<cfargument name="action" type="string" required="true">


    	<cfif LCase(action) eq 'save'>
    		<cfquery datasource="stem" name="editAdmin" result="status" debug="true" >
				UPDATE admins 
				SET first_name='#first#', last_name='#last#', password='#password#'
				WHERE id='#id#';
			</cfquery>
    		
    	<cfelseif LCase(action) eq 'delete'>
			<cfquery datasource="stem" name="editAdmin" result="status" debug="true" >
				DELETE FROM admins WHERE id = "#id#";
			</cfquery>

    	</cfif>

		
		<cfreturn status>
	</cffunction>

<!---Upload file--->
	<cffunction name="uploadFile" access="remote">
		<cfargument name="file" type="string" required="true">
		<cfargument name="id" type="string" required="true">
		<cfset fileID = CreateUUID()>

		<cffile action="upload" fileField="fileUpload" destination="#ExpandPath('/stem/uploads/')#" result="result">
    	<cffile action="rename" destination="#ExpandPath('/stem/uploads/')##fileID#.#result.SERVERFILEEXT#" source="#ExpandPath('/stem/uploads/')##result.CLIENTFILE#" result="result1">

    	<cfset p = ListToArray(file, '.')>
	  	<cfquery datasource="stem" name="saveEmployee" result="result">
			UPDATE #p[1]# SET  
				#p[2]# = '#fileID#.#result.SERVERFILEEXT#' 
			WHERE id = #id#;
		</cfquery>
		
		<cflocation url="#CGI.HTTP_REFERER#" addtoken="no">
		<cfreturn result>
	</cffunction>

<!---Delete file--->
	<cffunction name="deleteFile" access="remote">
		<cfargument name="file" type="string" required="true">
		<cfargument name="id" type="string" required="true">

		<cffile action="delete" file="#ExpandPath('/stem/uploads/')##file#">
		<cfreturn>
	</cffunction>

</cfcomponent>