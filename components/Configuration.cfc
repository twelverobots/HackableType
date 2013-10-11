<cfcomponent>
	<cfset variables.dsn = "undefined">
	<cffunction name="init" returntype="Configuration" output="false" access="public">
		<cfargument name="dsn" type="variableName" required="true">
		<cfset variables.dsn = arguments.dsn>
		<cfreturn this>
	</cffunction>
	
	<cffunction name="getDatasource" returntype="variablename" output="false" access="public">
		<cfreturn variables.dsn>
	</cffunction>
	
	
</cfcomponent>