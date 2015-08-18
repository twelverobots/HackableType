<cf_layout>	
	<!--- Add the lesson toolbar --->
	<cf_lessonToolbar />
	
	<div id="content">
		<cfif session.isAdmin>
			<div class="alert alert-success">
				<cfoutput>
					Successfully #url.action# stuff
				</cfoutput>
			</div>
		<cfelse>
			<div class="alert alert-danger">
				Sorry you need to be an admin.
			</div>
		</cfif>
	</div>