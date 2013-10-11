<cf_layout>
	<cfscript>
		aHints = [
			"Where does the mime type that is used in cffile accept come from?",
			"If the client supplies the mime type used by cffile can we make a HTTP POST request that has the mime type image/png but has a cfm file extension?"
		];
	</cfscript>
	
	<cf_hintLayout ahints="#aHints#" />
</cf_layout>