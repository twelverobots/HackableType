<cf_layout>
	<!--- Add the lesson toolbar --->
	<cf_lessonToolbar />
	
	<!--- 	
		Create the databsae gateway object, this is the object that this 
		lesson uses to talk to the database.
		Hint: This is important
	--->
	<cfif NOT structKeyExists(URL, "newsid")>
		<cflocation url="index.cfm" addtoken="false" />
	</cfif>
	
	<cfset databaseGateway = createObject('component', 'lessons.SQLiTwo.dbGateway') />
	
	<!--- Get all news articles --->
	<cfset result = databaseGateway.getArticle(url.newsid) />
	<cfoutput query="result">
		<div class="main">
		    <h2>#result.title#</h2>
			<h3>by #result.byline#</h3>
		    <p>
		    	#result.bodytext#
		    </p>
		    <br /><br />
		    
		    <br /><br />
		</div>
    </cfoutput>
</cf_layout>