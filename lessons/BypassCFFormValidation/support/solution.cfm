<cf_layout>
	<cf_lessonToolbar />

	
	
	<pre>
	&lt;cfhttp url="http://#cgi.server_name#/lessons/BypassCFFormValidation/form-action.cfm" method="post"&gt;
		&lt;cfhttpparam name="year" value="Bob" type="formfield"&gt;
	&lt;/cfhttp&gt;
	
	&lt;cfdump var="#cfhttp#"&gt;
	</pre>
	
</cf_layout>