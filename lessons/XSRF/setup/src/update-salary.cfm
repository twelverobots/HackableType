<cfset gateway = CreateObject("component", "dbGateway")>
<cfparam name="employeeid" default="0" type="integer">
<cfparam name="salary" default="0" type="integer">
<cfparam name="session.department" type="string" default="Unknown">
<cfif session.department IS "HR">
	<cfset gateway.updateSalary(employeeid, salary)>
</cfif>
<cflocation url="index.cfm" addtoken="false">