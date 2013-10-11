<cf_layout>
	<cfscript>
		aHints = [
			"You can invoke a remote component method using cia.cfc?method=getNocList&returnformat=json",
			"Add a script tag where the src is the path the the JSON url.",
			"Override the setter constructor using Object.prototype.__defineSetter__('AGENT', function(obj){alert(obj);});",
			"You can also override the constructor using var arrayData; Array = function() {arrayData = this;};"
		];
	</cfscript>
	
	<cf_hintLayout ahints="#aHints#" />
</cf_layout>