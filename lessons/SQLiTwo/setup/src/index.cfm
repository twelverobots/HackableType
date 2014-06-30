<cf_layout>	
	<!--- Add the lesson toolbar --->
	<cf_lessonToolbar />
	
	<!--- 	
		Create the databsae gateway object, this is the object that this 
		lesson uses to talk to the database.
		Hint: This is important
	--->
	<cfset databaseGateway = createObject('component', 'dbGateway') />
	
	<!--- Get all news articles --->
	<cfset results = databaseGateway.getArticles() />
	
	<cfoutput>
    	<div id="content">
			<h2>SQL Injection Lesson 2</h2>
			<p class="description">
				In this lesson you will attempt to obtain usernames and passwords from this site by exploiting the 
				news section of the site.
			</p>
			
			<div class="main">
			    <h2>NEWS</h2>
			    <br /><br />
			    
				<cfloop query="results">
					<h4><a href="newsdetail.cfm?newsid=#results.newsid#">#results.title#</a></h4>
				    <h5>by #results.byline#</h5>
					<h6>#dateFormat(results.pubdate,'mmmm d, yyyy')#</h6>
				    <p class="news">
				    #Left(results.bodytext, 399)# &nbsp; &nbsp;
					<a href="newsdetail.cfm?newsid=#results.newsid#">more...</a>
				    </p>
				    <br /><br />
		    	</cfloop>
			</div>
		  
		</div>
    </cfoutput>
</cf_layout>