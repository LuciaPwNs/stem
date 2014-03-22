<cfcomponent>
	<cffunction name="getEmployeeData" returnType="query">
		<cfargument name="selectedEmployee" type="string" required="yes">

		<cfquery datasource="stem" name="basic_employee_info" result="employee" debug="true">
			SELECT * FROM employee where id like #selectedEmployee#;
		</cfquery>
		<cfreturn basic_employee_info></cfreturn>
	</cffunction>
</cfcomponent>