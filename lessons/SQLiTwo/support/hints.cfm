<cf_layout>
	<cfscript>
		aHints = [
			"URL parameters are ALWAYS a good place to try to inject SQL or other code",
			"SQL Injection using UNIONS are quite common for getting code to display some data that it thinks is other data"
		];
	</cfscript>
	
	<cf_hintLayout ahints="#aHints#" />
</cf_layout>