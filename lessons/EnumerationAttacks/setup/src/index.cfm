<cf_layout>	
	<!--- Add the lesson toolbar --->
	<cf_lessonToolbar />
	
	<!--- 	
		Create the databsae gateway object, this is the object that this 
		lesson uses to talk to the database.
		Hint: This is important
	--->
	
	<cfset dbGateway = createObject('component', 'dbGateway') />
	<cfparam name="form.username" default="" />
	<cfparam name="form.password" default="" />
	<cfparam name="errors" default="#arrayNew(1)#" />	
	<!--- Check form post --->
	<cfif structKeyExists(FORM, "btnSubmit")>
		<cfset result = dbGateway.checkUser(form.username, form.password) />
		
		<cfif structKeyExists(result, "auth") and result.auth>
			<cflocation url="authSuccess.cfm"  addtoken="false" />
		<cfelse>
			<cfset errors = result.errors />
		</cfif>
		
	</cfif>
	
	<cfoutput>
    	<div id="content">
			<h2>User enumeration</h2>
			<p class="description">
				In this lesson try to find as many users in the system as you can using an enumeration attack.
			</p>
			
			<div class="main">
				
				<h3>Welcome to our site</h3>
				<br />
				<h5>Please Login</h5>
				<br />
				<cfoutput>
					<cfif ArrayLen(errors)>
				    	<div id="error">
				    		<ul>
				    			<cfloop array="#errors#" index="errorIndex">
									<li>#errorIndex#</li>
								</cfloop>
							</ul>
						</div>
					</cfif>
					<form action="index.cfm" method="post">
						<label for="username">Username : </label>
						<input type="text id="username" name="username" value="#form.username#" />
						<br /><br />
						<label for="password">Password : </label>
						<input type="text id="password" name="password" value="" />
						<br /><br />
						<input type="submit" name="btnSubmit" value="login" />
					</form>
					
			    </cfoutput>
			    
			</div>
		  
		</div>
    </cfoutput>
</cf_layout>