<cfcomponent>
	<cffunction name="checkUser" access="public" returntype="struct" output="false">
		<cfargument name="username" type="string" required="true" />
		<cfargument name="password" type="string" required="true" />
		
		<cfset var qUser = "" />
		<cfset var qPassword = "" />
		<cfset var sReturn = structNew() />
		<cfset sReturn.auth = false />
		<cfset sReturn.errors = arrayNew(1) />
	
		<cfquery name="qUser" datasource="#application.dsn#">
			SELECT count(*) as usercount
			FROM users
			WHERE username = <cfqueryparam value="#arguments.username#" cfsqltype="cf_sql_varchar" />
		</cfquery>	
		
		<cfif qUser.usercount NEQ 1>
			<cfset arrayAppend(sReturn.errors, "Invalid Username") />
			<cfset sReturn.auth = false />
			<cfreturn sReturn />
		</cfif>
		
		<cfquery name="qPassword" datasource="#application.dsn#">
			SELECT count(*) AS validUser
			FROM users
			WHERE username = <cfqueryparam value="#arguments.username#" cfsqltype="cf_sql_varchar" />
				AND password = <cfqueryparam value="#arguments.password#" cfsqltype="cf_sql_varchar" />
		</cfquery>
		
		 <cfif qPassword.validUser EQ 1>
		 	<cfset sReturn.auth = true />
		<cfelse>
			<cfset arrayAppend(sReturn.errors, "Invalid Password") />
			<cfset sReturn.auth = false />
		</cfif>
		
		<cfreturn sReturn />
	</cffunction>
</cfcomponent>