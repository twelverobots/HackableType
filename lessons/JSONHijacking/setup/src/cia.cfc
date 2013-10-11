<cfcomponent>
	<cffunction name="getNocList" returntype="array" access="remote">
		<cfset var nocList = [{agent="Ethan Hunt", id=1}, {agent="James Bond", id=2}, {agent="Maxwell Smart", id=3}]>
		<cfif IsDefined("session.isGuyWhoGetsLaxative") AND session.isGuyWhoGetsLaxative>
			<cfreturn nocList>
		<cfelse>
			<cfreturn ArrayNew(1)>
		</cfif>
	
	</cffunction>
	
</cfcomponent>