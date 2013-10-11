<cf_layout>	
	<!--- Add the lesson toolbar --->
	<cf_lessonToolbar />
	
	<!--- 	
		Create the databsae gateway object, this is the object that this 
		lesson uses to talk to the database.
		Hint: This is important
	--->
	
	<cfset dbGateway = createObject('component', 'dbGateway') />
	<cfset categories = dbGateway.getCategories() />
				
	
	<cfparam name="URL.name" default="" />
	
	<cfoutput>
    	<div id="content">
			<h2>Persistent XSS Lesson</h2>
			<p class="description">
				In this lesson you will perform a persistent XSS attack
			</p>
			
			<div class="main">
				
				<h3>Welcome to our home improvements site</h3>
				
				<h5>Please choose a category:</h5>
				<cfoutput>
			    	
					<ul>
						<cfloop query="categories">
							<li><a href="detail.cfm?cat_id=#categories.cat_id#">#categories.cat_name#</a></li>
						</cfloop>
					</ul>
					
			    </cfoutput>
			    
			</div>
		  
		</div>
    </cfoutput>
</cf_layout>