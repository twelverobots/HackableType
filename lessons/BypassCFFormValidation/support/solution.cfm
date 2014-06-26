<cf_layout>
	<cf_lessonToolbar />

	
	<div id="content">
		<h2>Solution</h2>
	<cfoutput>
	<pre>
	&lt;cfhttp url="http://#cgi.server_name#/lessons/BypassCFFormValidation/form-action.cfm" method="post"&gt;
		&lt;cfhttpparam name="year" value="Bob" type="formfield"&gt;
	&lt;/cfhttp&gt;
	
	&lt;cfdump var="##cfhttp##"&gt;
	</pre>
	</cfoutput>
	</div>
</cf_layout>