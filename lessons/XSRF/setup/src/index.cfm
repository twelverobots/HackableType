<cf_layout>	
	<!--- Add the lesson toolbar --->
	<cf_lessonToolbar />
	<div id="content">
		
		<cfset gateway = CreateObject("component", "dbGateway")>
		
		<cfset employees = gateway.getEmployees()>
		
		
		
		
		<h2>Cross Site Request Forgery Lesson</h2>
		<p>See if you can increase your salary.</p>
		<br />
		
		<form action="login.cfm" method="post">
			<select name="employeeid">
				<cfoutput query="employees">
					<option value="#employees.employeeid#">#employees.name# (#employees.department#)</option>
				</cfoutput>
			</select>
			<input type="submit" value="Login As" />
		</form>
		<br />
		<cfparam name="session.employeeid" default="0" type="numeric">
		
		<cfif Val(session.employeeid) GT 0>
		
			<h3>Hackme Intranet</h3>
			<br />
			<cfoutput>Hello #session.employee_name#</cfoutput>
			<cflayout type="tab" tabHeight="500">
				<cfif session.department IS "HR">
			       <cflayoutarea title="Payroll">
				       
		               <table border="0" cellspacing="0" cellpadding="8" width="100%">
							<tr>
								<th>Employee ID</th>
								<th>Name</th>
								<th>Department</th>
								<th>Salary</th>
							</tr>
						
							<cfoutput query="employees">
								<tr>
									<td>#employees.employeeid#</td>
									<td>#employees.name#</td>
									<td>#employees.department#</td>
									<td>
										<form action="update-salary.cfm" method="post">
											<input type="hidden" name="employeeid" value="#employees.employeeid#" />
											<input type="text" value="#employees.salary#" name="salary" />
											<input type="submit" value="Update Salary">
										</form>
									</td>
								</tr>
							</cfoutput>
						</table>
			       </cflayoutarea>
			       
			       <cflayoutarea title="Messages for HR">
						<cfset messages = gateway.getMessages()>
						<h3>Messages for HR</h3>
						<cfoutput query="messages">
							<div class="message">
								#messages.message#
							</div>
						</cfoutput>
					</cflayoutarea>
				<cfelse>
					<cflayoutarea title="HR Request Form">
						
						<form action="post-message.cfm" method="post" class="message">
							<p>Fill out this form to send a message to HR</p>
							<textarea name="message" rows="5" cols="50"></textarea>
							<br />
							<input type="submit" value="Post Message To HR" />
						</form>
					</cflayoutarea>
				</cfif>
			</cflayout>
			
			
		</div>
		
	</cfif>
</cf_layout>