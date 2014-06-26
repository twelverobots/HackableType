<cfsilent>
	<cfdirectory action="list" type="dir" name="lessonDir" directory="#expandPath('/lessons')#" />
	<cfquery name="lessonDir" dbtype="query">
		SELECT * 
		FROM lessonDir
		WHERE name not like '.%'
	</cfquery>
</cfsilent>
<cfif structKeyExists(url, "lessons")>
	<cfset request.activeMenu = "lessons">
<cfelse>
	<cfset request.activeMenu = "home">
</cfif>
<cf_layout activeMenu="#request.activeMenu#">
	<cfoutput>
		<div id="content">
			<cfif structKeyExists(url, "lessons")>
				<cfset request.activeMenu = "lessons">
				<h1>Lessons</h1>
				<ul>
				<cfset name = application.lessonFactory.getLessonNames() />
				<cfloop from="1" to="#ArrayLen(name[1])#" index="nameIndex">
					<li><a href="lesson.cfm?lesson=#URLEncodedFormat(name[1][nameIndex])#&amp;action=setup">#name[2][nameIndex]#</a></li>
				</cfloop>
				</ul>
				
			<cfelse>
				<h1>Welcome to hackableType</h1>
				<p>
					Hackable type is web application specically designed to be hacked. It is a tool for 
					learning how to explot web applications, and how to fix the vulnerabilties that allow those exploits
				</p>
				
				<p>
					hackableType is broken into short, easy-to-follow lessons that each cover a specific vulnerability 
					commonly found in web applications.
				</p>

				<h2>Setup Information</h2>

				

				<table class="table">
					<tr>
						<td>Datasource:</td>
						<td>
						<cftry>
							<cfquery datasource="#application.dsn#">
								SELECT 1
							</cfquery>
							<div class="alert alert-success">
								<strong><span class="glyphicon glyphicon-ok"></span> Datasource: #encodeForHTML(application.dsn)# setup successfully.</strong> 
							</div>
							<cfcatch>
								<div class="alert alert-danger">
									<strong>
										<span class="glyphicon glyphicon-warning-sign"></span> Please Setup a MySQL Datasource Named: #encodeForHTML(application.dsn)#
									</strong>
									<p>Error: #encodeForHTML(cfcatch.message)#</p>
								</div>
							</cfcatch>
						</cftry>
						</td>
					</tr>
					<tr>
						<td>MySQL Version:</td>
						<td>
							<cftry>
							<cfquery datasource="#application.dsn#" name="mysql">
								SELECT VERSION() as version
							</cfquery>
							#encodeForHTML(mysql.version)#
							<cfcatch>
								<div class="alert alert-danger">
									<strong><span class="glyphicon glyphicon-warning-sign"></span> Datasource is not MySQL or is not yet setup.</strong>
								</div>
								<p>Error: #encodeForHTML(cfcatch.message)#</p>
							</cfcatch>
						</cftry>
						</td>
					</tr>
					<tr>
						<td>ColdFusion Version:</td>
						<td>#server.coldfusion.productname# #server.coldfusion.productversion#</td>
					</tr>
					<tr>
						<td>Web Root:</td>
						<td>#Replace(getCurrentTemplatePath(), "index.cfm", "")#
					</tr>
					<tr>
						<td>OS:</td>
						<td>#server.os.name# #server.os.version#</td>
					<tr>

				</table>
				
			</cfif>
		</div>
	</cfoutput>
</cf_layout>