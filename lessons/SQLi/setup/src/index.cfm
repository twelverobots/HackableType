<cf_layout>	
	<!--- Add the lesson toolbar --->
	<cf_lessonToolbar />
	
	<!--- 	
		Create the databsae gateway object, this is the object that this 
		lesson uses to talk to the database.
		Hint: This is important
	--->
	<cfset databaseGateway = createObject('component', 'lessons.SQLi.dbGateway') />
	
	<!--- 
		Check to see if the form has been submitted
		If it has, do error checking
	--->
	<cfif structKeyExists(form, "search") AND Len(form.search) AND structKeyExists(form, "type")>
		<cfset results = databaseGateway.runSearch(form.search, form.type) />
	<cfelseif structKeyExists(form, "search") AND NOT Len(form.search)>
		<cfset error = "You must enter a Username" />
	</cfif>
	
	<cfoutput>
    	<div id="content">
			<h2>SQL Injection Lesson 1</h2>
			<p class="description">
				In this lesson you will attempt a SQL Injection attack against a user search. Try deleting the contents of the user table.
				Some valid usernames are jdean, pfreitag, and bforta. Valid user ids are 1,2, and 3
			</p>
			
			<!--- If there is an error, display it --->
			<cfif IsDefined("error")><div class="error">#error#</div></cfif>
			
			<form action="index.cfm" method="post">
				<label for="search">Enter Search : </label>
				<input type="text" name="search" id="search" value="" />
				<select name="type">
					<option value="1">Username</option>
					<option value="2">User ID</option>
				</select>
				<input type="submit" name="btnSearch" value="Search" />
			</form>
			<br /><br />
			
			<!--- If there are results, display them --->
			<cfif IsDefined("results")>
				<table class="orangeTable">
					<thead>
						<tr>
							<th>Username</th>
							<th>First name</th>
							<th>Last name</th>
						</tr>
					</thead>
					<tbody>
						<cfif results.recordcount>
							<cfloop query="results">
								<tr>
									<td>#results.username#</td>
									<td>#results.first_name#</td>
									<td>#results.last_name#</td>
								</tr>
							</cfloop>
						<cfelse>
							<tr>
								<td colspan="3">No Results</td>
							</tr>
						</cfif>
					</tbody>
				</table>
			</cfif>
		</div>
    </cfoutput>
</cf_layout>