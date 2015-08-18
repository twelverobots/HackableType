<cf_layout>	
	<!--- Add the lesson toolbar --->
	<cf_lessonToolbar />
	
	<div id="content">
		<cfparam name="form.username" default="">
		<cfparam name="form.password" default="">
		<cfif form.password IS "pwd">
			<cfset session.isLoggedIn = true>
			<cfset session.username = form.username>
			<cfif form.username IS "admin">
				<cfset session.isAdmin = true>
			</cfif>
			<cflocation url="index.cfm" addtoken="false">
		<cfelse>
			<div class="alert alert-danger">
				Sorry wrong password. Try: pwd
			</div>
		</cfif>

	</div>
</cf_layout>