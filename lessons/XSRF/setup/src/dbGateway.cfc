<cfcomponent hint="I handle DB functions for this lesson">
	<cfset variables.ds = application.dsn>
	
	<cffunction name="getEmployee" returntype="query">
		<cfargument name="id" type="numeric" required="true">
		<cfset var emp = "">
		<cfquery datasource="#variables.ds#" name="emp">
			SELECT employeeid, name, salary, department
			FROM employees
			WHERE employeeid = <cfqueryparam value="#arguments.id#" cfsqltype="cf_sql_integer">
		</cfquery>
		<cfreturn emp>
	</cffunction>
	
	<cffunction name="getEmployees" returntype="query" output="false">
		<cfset var emp = "">
		<cfquery datasource="#variables.ds#" name="emp">
			SELECT employeeid, name, salary, department
			FROM employees
		</cfquery>
		<cfreturn emp>
	</cffunction>
	
	<cffunction name="updateSalary" returntype="void" output="false">
		<cfargument name="id" type="numeric" required="true">
		<cfargument name="salary" type="numeric" required="true">
		<cfquery datasource="#variables.ds#">
			UPDATE employees 
			SET salary = <cfqueryparam value="#Int(arguments.salary)#" cfsqltype="cf_sql_integer">
			WHERE employeeid = <cfqueryparam value="#Int(arguments.id)#" cfsqltype="cf_sql_integer">
		</cfquery>
	</cffunction>
	
	<cffunction name="getMessages" returntype="query" output="false">
		<cfset var msg = "">
		<cfquery datasource="#variables.ds#" name="msg">
			SELECT id, message
			FROM messages
			ORDER BY id DESC
		</cfquery>
		<cfreturn msg>
	</cffunction>
	
	<cffunction name="postMessage" returntype="void" output="false">
		<cfargument name="message">
		<cfquery datasource="#variables.ds#">
			INSERT INTO messages (message)
			VALUES (<cfqueryparam value="#arguments.message#" cfsqltype="cf_sql_varchar">)
		</cfquery>
	</cffunction>
	
</cfcomponent>