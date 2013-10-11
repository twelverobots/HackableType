<cf_layout>	
	<!--- Add the lesson toolbar --->
	<cf_lessonToolbar />
	
	<!--- 	
		Create the databsae gateway object, this is the object that this 
		lesson uses to talk to the database.
		Hint: This is important
	--->
	
	<cfparam name="URL.name" default="" />
	
	<cfoutput>
    	<div id="content">
			<h2>Reflected XSS Lesson</h2>
			<p class="description">
				In this lesson you will perform a reflected XSS attack
			</p>
			
			<div class="main">
				
				<form action="" method="get">
					<label for="name">Enter you name : </label>
					<input type="text" name="name" id="name" value="" />
					<br /><br />
					<input type="submit" name="btnSubmit" value="Submit" />
				</form>
				<br /><br />
				<cfif Len(URL.name)>
					<cfoutput><h2>Hello, #URL.name#</h2></cfoutput>
				</cfif>
			    
			</div>
		  
		</div>
    </cfoutput>
</cf_layout>