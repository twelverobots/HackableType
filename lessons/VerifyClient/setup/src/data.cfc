<cfcomponent>
	
	<cffunction name="getSalesData" returntype="struct" output="false" access="remote" returnformat="json">
		<cfargument name="cfgridpage" type="numeric" default="1">
		<cfargument name="cfgridpagesize" type="numeric" default="100">
		<cfargument name="cfgridsortcolumn" type="string" default="SalesYear">
		<cfargument name="cfgridsortdirection" type="string" default="ASC">
		<cfset var data = QueryNew("SalesYear,SalesQuarter,Sales", "cf_sql_integer,cf_sql_integer,cf_sql_integer")>
		<cfset var y = 0>
		<cfset var q = 1>
		<cfset var sortedData = "">
		<cfset var rtn = StructNew()>
		
		<cfif NOT IsDefined("session.vcExampleAuthentiated") OR NOT session.vcExampleAuthentiated>
			<!--- not authenticated --->
			<cfreturn StructNew()>
		</cfif>
		
		<cfif IsDefined("session.cachedSalesData")>
			<cfset data = session.cachedSalesData>
		<cfelse>
			<!--- make some fake sales data --->
			<cfloop from="2000" to="#Year(Now())#" index="y">
				<cfloop from="1" to="4" index="q">
					<cfif y EQ Year(Now()) AND q GT Quarter(now())><cfbreak></cfif>
					<cfset QueryAddRow(data)>
					<cfset QuerySetCell(data, "SalesYear", y)>
					<cfset QuerySetCell(data, "SalesQuarter", q)>
					<cfset QuerySetCell(data, "Sales", RandRange(1000000,5000000, "SHA1PRNG"))>
				</cfloop>
			</cfloop>
			<cfset session.cachedSalesData = data>
		</cfif>
		<!--- sort --->
		<cfquery dbtype="query" name="sortedData">
			SELECT SalesYear, SalesQuarter, Sales
			FROM data
			ORDER BY 
				<cfif LCase(arguments.cfgridsortcolumn) IS "sales">
					Sales <cfif LCase(arguments.cfgridsortdirection) IS "asc">ASC<cfelse>DESC</cfif>
				<cfelse>
					SalesYear <cfif LCase(arguments.cfgridsortdirection) IS "asc">ASC<cfelse>DESC</cfif>, SalesQuarter <cfif LCase(arguments.cfgridsortdirection) IS "asc">ASC<cfelse>DESC</cfif>
				</cfif>
		</cfquery>
		<cfset rtn = {totalrowcount=sortedData.recordcount, query=sortedData}>
		<cfreturn rtn>
	</cffunction>
	
	<cffunction name="getArray" returntype="array" access="remote" returnformat="json">
		<cfset var a = [1,2,3]>
		<cfset s = StructNew()>
		<cfset s.query = getSalesData()>
		<cfset ArrayAppend(a, s)>
		<cfreturn a>
	</cffunction>
	
</cfcomponent>