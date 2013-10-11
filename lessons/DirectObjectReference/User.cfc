<cfcomponent>
	<cfset variables.firstname = "" />
	<cfset variables.lastname = "" />
	<cfset variables.state = "" />
	<cfset variables.ccArray = ArrayNew(1) />
	
	<cffunction name="init" access="public" returntype="User" output="false">
		<cfargument name="firstname" type="string" required="false" default="" />
		<cfargument name="lastname" type="string" required="false" default="" />
		<cfargument name="state" type="string" required="false" default="" />
		
		<cfset variables.firstname = arguments.firstname />
		<cfset variables.lastname = arguments.lastname />
		<cfset variables.state = arguments.state />
		
		<cfreturn this />
	</cffunction>
	
	<cffunction name="getFirstName" access="public" returntype="string" output="false">
		<cfreturn variables.firstname />
	</cffunction>
	
	<cffunction name="getLastName" access="public" returntype="string" output="false">
		<cfreturn variables.lastname />
	</cffunction>
	
	<cffunction name="getState" access="public" returntype="string" output="false">
		<cfreturn variables.state />
	</cffunction>
	
	<cffunction name="getCreditCards" access="public" returntype="Array" output="false">
		<cfreturn variables.ccArray />
	</cffunction>
	
	<cffunction name="addCreditCard" access="public" returntype="void" output="false">
		<cfargument name="cardid" type="string" required="true">
		<cfargument name="cardno" type="string" required="true">
		<cfset var position = ArrayLen(variables.ccArray) + 1 />
		<cfset variables.ccArray[position] = structNew() />
		<cfset variables.ccArray[position].cardid = arguments.cardid />
		<cfset variables.ccArray[position].cardno= arguments.cardno />
	</cffunction>
</cfcomponent>