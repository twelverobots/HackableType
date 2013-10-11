<cf_layout>
	<cf_lessonToolbar />
	
	<div id="content">
		<h2>Solution</h2>
		
		<div id="solutionText">
			By encoding a CRLF in the URL as <cfoutput>#URLEncodedFormat(Chr(13)&Chr(10))#</cfoutput>
			we can create our own HTTP headers. In this case we are using the Refresh header to redirect the 
			client to the url of our site:
			<a href="../view.cfm?type=html%0D%0ARefresh:0;url=http://hackersite.com/hello.cfm">view.cfm?type=html%0D%0ARefresh:0;url=http://hackersite.com/hello.cfm</a>		
			
		</div>
	</div>
	
	
</cf_layout>

