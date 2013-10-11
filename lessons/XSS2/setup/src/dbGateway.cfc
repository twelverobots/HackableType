<cfcomponent>
	<cffunction name="getCategories" access="public" returntype="Query" output="false">
		
		<cfset var qCats = "" />
		
		<cfquery name="qCats" datasource="#application.dsn#">
			SELECT cat_id, cat_name
			FROM categories
		</cfquery>

		<cfreturn qCats />
	</cffunction>
	
	<cffunction name="getCategory" access="public" returntype="Query" output="false">
		<cfargument name="cat_id" />	
		
		<cfset var qCat = "" />
		
		<cfquery name="qCat" datasource="#application.dsn#" result="test">
			SELECT cat_id, cat_name, cat_description
			FROM categories
			WHERE cat_id = #arguments.cat_id#
		</cfquery>

		<cfreturn qCat />
	</cffunction>
</cfcomponent>