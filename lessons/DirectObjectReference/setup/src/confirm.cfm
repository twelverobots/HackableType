<cf_layout>	
	<!--- Add the lesson toolbar --->
	<cf_lessonToolbar />
	
	<cfparam name="form.firstname" default="" />
	<cfparam name="form.lastname" default="" />
	<cfparam name="form.state" default="" />
	<cfparam name="form.cardid" default="0" />
	
	<!--- 	
		Create the databsae gateway object, this is the object that this 
		lesson uses to talk to the database.
		Hint: This is important
	--->
	<cfset dbGateway = createObject('component', 'dbGateway') />
	<cfset cardInfo = dbGateway.getCardInfo(form.cardid) />
	
	<cfoutput>
    	<div id="content">
    	
			<h2 class="cat_name">Thank you for your order. Please confirm.</h2>
			<a href="index.cfm">Back to Cart</a><br />
			
			<div class="main">
				<p>This order's will be charged to:</p>
				
				<p>
					#form.firstname# #form.lastname#<br />
					From #form.state#<br /><br />
					
					CC Number : #cardInfo.card_no# <br />
					Cardholder : #cardInfo.name# <br />
					
				</p>
				
			</div>
		  
		</div>
    </cfoutput>
</cf_layout>