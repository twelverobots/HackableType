<cfset StructClear(session)>
<cfset SessionInvalidate()>
<cflocation url="index.cfm" addtoken="false">