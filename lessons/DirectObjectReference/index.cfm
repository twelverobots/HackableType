<cf_layout>	
	<!--- Add the lesson toolbar --->
	<cf_lessonToolbar />
	
	<cfparam name="URL.name" default="" />
	
	<cfoutput>
    	<div id="content">
			<h2>Insecure Direct Object Reference</h2>
			<p class="description">
				In this lesson you will use a direct object refernece to manipulate a e-commerce checkout process.
				Try to have the products in this cart charged to another user's credit card.
			</p>
			
			<div class="main">
				
				<h3>Thanks for shopping at HACME Online. How would you like to pay for your order?</h3>
				<br />
				<table class="orangeTable">
					<thead>
						<tr>
							<th>Item No</th>
							<th>Item Name</th>
							<th>Description</th>
							<th>Price</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>ColdFusion 9 Server (std)</td>
							<td>An awesome server environment</td>
							<td class="money">$1299</td>
						</tr>
						<tr>
							<td>2</td>
							<td>ColdFusion Builder</td>
							<td>An Awesome IDE for developing awesome applications</td>
							<td class="money">$299</td>
						</tr>
						<tr>
							<td>3</td>
							<td>Can of Popeye Spinach</td>
							<td>It's good for you</td>
							<td class="money">$0.99</td>
						</tr>
						<tr>
							<td>4</td>
							<td>Guitar Hero - Metallica</td>
							<td>The best Guitar Hero yet!</td>
							<td class="money">$49.99</td>
						</tr>
						<tr>
							<td colspan="3">Total</td>
							<td class="money">1648.98</td>
						</tr>
					</tbody>
				</table>
				<div style="padding: 10px;"></div>
				<form action="confirm.cfm" method="post">
					<label for="firstname">First Name : </label>
					<input type="text" name="firstname" id="firstname" value="#session.user.getFirstName()#" />
					<br /><br />
					<label for="lastname">Last Name : </label>
					<input type="text" name="lastname" id="lastname" value="#session.user.getLastName()#" />
					<br /><br />
					<label for="state">State : </label>
					<input type="text" name="state" id="state" value="#session.user.getState()#" />
					<br /><br />
					
					<cfset cards = session.user.getCreditCards() />
					<label for="cardid">Credit Card : </label>
					<select name="cardid">
						<cfloop array="#cards#" index="cardIndex">
							<option value="#cardIndex.cardid#">#cardIndex.cardno#</option>
						</cfloop>
					</select>
					<br /><br />
					<input type="submit" name="btnSubmit" value="checkout" />
				</form>			    
			</div>
		  
		</div>
    </cfoutput>
</cf_layout>