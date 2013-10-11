<cf_layout>	
	<!--- Add the lesson toolbar --->
	<cf_lessonToolbar />
	
	<cfparam name="URL.cat_id" default="0" />
	
	<!--- 	
		Create the databsae gateway object, this is the object that this 
		lesson uses to talk to the database.
		Hint: This is important
	--->
	<cfset dbGateway = createObject('component', 'dbGateway') />
	<cfset category = dbGateway.getCategory(url.cat_id) />
	
	<cfoutput>
    	<div id="content">
    	
			<h2 class="cat_name">#category.cat_name#</h2>
			<a href="index.cfm">Back to Categories</a><br />
			
			<div class="main">
				
				<p class="cat_description">#category.cat_description#</p>
			    
			</div>
		  
		</div>
    </cfoutput>
</cf_layout>