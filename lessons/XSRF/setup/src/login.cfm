<cfset gateway = CreateObject("component", "dbGateway")>
<cfparam name="form.employeeid" default="0" type="integer">

<cfset emp = gateway.getEmployee(form.employeeid)>
<cfset session.employeeid = emp.employeeid>
<cfset session.department = emp.department>
<cfset session.employee_name = emp.name>
<cflocation url="index.cfm" addtoken="false">