<cf_layout>	
	<!--- Add the lesson toolbar --->
	<cf_lessonToolbar />
	
	<div id="content">
		<cfparam name="session.isLoggedIn" default="false">
		<cfif session.isLoggedIn>
			<div class="pull-right">
				<a href="logout.cfm" class="btn btn-danger">Logout</a>
			</div>
			<cfoutput>
				<h2>Hi, #session.username#</h2>
			</cfoutput>
			<br>
			<cfif IsDefined("session.isAdmin") AND session.isAdmin>
				<a href="admin-stuff.cfm?action=deleted" class="btn btn-primary">
					Delete Stuff
				</a>
				<a href="admin-stuff.cfm?action=launched" class="btn btn-danger">
					Launch Stuff
				</a>
				<a href="admin-stuff.cfm?action=ran" class="btn btn-success">
					Run Stuff
				</a>
			</cfif>
			<cfdump var="#session#" label="Session Scope">
		<cfelse>
			<h2>Please Login</h2>
			<form action="login.cfm" method="post">
				<input type="text" name="username" placeholder="username:try admin or pete" class="form-control">
				<br>
				<input type="password" name="password" placeholder="password: try pwd" class="form-control">
				<br>
				<input type="submit" class="btn btn-primary" value="Login">
			</form>
		</cfif>

	</div>
</cf_layout>