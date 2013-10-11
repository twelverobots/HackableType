<cfcomponent>
	<cfset this.name = "hackmycf_pathtrav_private">
	
	<cffunction name="onRequestStart" returntype="boolean" output="true">
		<cfargument name="targetPage">
		<!--- abort all requests, so you can't view these pages --->
		<cfoutput>Sorry no can do.</cfoutput>
		<cfreturn false>
	</cffunction>
	
</cfcomponent>