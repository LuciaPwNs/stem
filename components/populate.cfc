<cfcomponent>

	<cffunction name="getEmployeeData" access="remote" returnType="query">
		<cfargument name="selectedEmployee" type="string" required="yes">
		<cfquery datasource="stem" name="basic_employee_info" result="employee" debug="true">
			SELECT * FROM employee;
		</cfquery>
		<cfreturn basic_employee_info >
	</cffunction>

</cfcomponent>