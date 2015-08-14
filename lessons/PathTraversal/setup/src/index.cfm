<cf_layout>	
	<!--- Add the lesson toolbar --->
	<cf_lessonToolbar />
	
	<div id="content">
		<h2>Path Traversals</h2>
		
		<p>Can you read the contents of the <a href="../private/passwords.cfm">private/passwords.cfm</a> file?</p>
		
		<br />
		
		<h3>Company Information:</h3>
		
		<p><a href="go.cfm?page=mission-statement.cfm">Corporate Mission Statement</a></p>
		
		
		<h4>Bonus Round</h4>
		<p>Can you find a way to read the contents of the <code>/etc/passwd</code> file?</p>

		
		<cfset logfile = ExpandPath("../private/log.txt")>
		<cfset logmsg = "Hit: #cgi.script_name# with #cgi.http_user_agent# at #now()##chr(13)#">
		<cffile action="append" file="#logfile#" output="#logmsg#">
		
		
	</div>
</cf_layout>