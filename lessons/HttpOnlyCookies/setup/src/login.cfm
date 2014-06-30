<cf_layout>
	<div id="content">
	<cfparam name="form.username" default="">
	<cfif Len(form.username)>
		<cfcookie name="username" value="#form.username#">
		You have logged in as <cfoutput>#EncodeForHTML(form.username)#</cfoutput>	
	<cfelse>
		You didn't specify a username.
	</cfif>
	</div>
</cf_layout>