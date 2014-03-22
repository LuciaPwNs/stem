<cfcomponent>

	<cffunction name="getEmployeeData" access="remote" returnformat="json">
		<cfargument name="selectedEmployee" type="string" required="yes">
		<cfargument name="field" type="string" required="yes">
		
		<cfquery datasource="stem" name="basic_employee_info" result="employee" debug="true" cachedWithin = "#CreateTimeSpan(0, 0, 60, 0)#">
			SELECT * FROM employee;
		</cfquery>


		<cfset something = basic_employee_info.first_name>
		<cfreturn something >
	</cffunction>

	<cffunction name="getSession" access="remote" returnFormat="JSON">
		
		<cftry>
		    <cfreturn session>
		    <cfcatch>
		        <cfoutput>
		            Oh, Crap! Something bad happened! (#cfcatch.message#)
		        </cfoutput>
		    </cfcatch>
		</cftry>
	</cffunction>
</cfcomponent>