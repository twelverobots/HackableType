<cfcomponent>
	<cffunction name="runSearch" access="public" returntype="Query" output="false">
		<cfargument name="searchString" type="string" required="false" default="" />
		<cfargument name="searchType" type="numeric" required="false" default="1" />
		
		<cfset var qSearch = "" />
		
		<cfquery name="qSearch" datasource="#application.dsn#">
			SELECT username, first_name, last_name
			FROM users
			WHERE 
				<cfswitch expression="#arguments.searchType#">
				
					<cfcase value="1">
						username = '#arguments.searchstring#'
					</cfcase>
					
					<cfcase value="2">
						userid = #arguments.searchstring#
					</cfcase>
				</cfswitch>
		</cfquery>

		<cfreturn qSearch />
	</cffunction>
</cfcomponent>