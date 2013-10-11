<cfcomponent>
	<cffunction name="getArticles" access="public" returntype="Query" output="false">
		
		<cfset var qArticles = "" />
		
		<cfquery name="qArticles" datasource="#application.dsn#">
			SELECT newsid, title, byline, pubdate, bodytext
			FROM news
		</cfquery>

		<cfreturn qArticles />
	</cffunction>
	
	<cffunction name="getArticle" access="public" returntype="Query" output="false">
		<cfargument name="id" required="false" default="0" />
		
		<cfset var qArticle = "" />
		
		<cfquery name="qArticle" datasource="#application.dsn#" result="test">
			SELECT title, byline, bodytext
			FROM news
			WHERE newsid = #arguments.id#
		</cfquery>

		<cfreturn qArticle />
	</cffunction>
</cfcomponent>