<cf_layout>
	<cf_lessonToolbar />
	
	<div id="content">
		<h2>Solution</h2>
		
		<div id="solutionText">
			<p>
			The key to SQL injection is to "break out" of the data context and into an execution context.</p>

			<p>
			Exploting the user ID type is easy. Exploiting the username search is harder because it is wrapped in quotes.
			</p>
			
			<p>Try something like this for userid:</pre>
			<pre>0;DELETE FROM users</pre>


			<p>For the username we need to close the first single quote because CF will automatically escape single quotes for you inside CFQuery. We do that using <code>\'</code> Then we need to comment out the single quote at the end using <code>#</code>.:</p>
			<pre>pete\';DELETE FROM users#</pre>
			
		</div>
	</div>
	
	
</cf_layout>