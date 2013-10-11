<cf_layout>	
	<!--- Add the lesson toolbar --->
	<cf_lessonToolbar />
	
	<cfparam name="URL.name" default="" />
	
	<cfoutput>
		<cfsavecontent variable="jsContent">
			<!--- Start Inserted by cfhtmlhead --->
				<script>
					$(function(){
						$('##profileForm').submit(function(e){
							
							if (validateForm(e.target)) {
								return true;
							} else {
								return false;
							}
							
						});
					})
					
					function validateForm(form) {
						var formData = $(form);
						var errorCount = 0;
						var errorMessages = [];
						
						if (!form.firstName.value.match(/^[A-Za-z\'-]+$/)) {
							errorMessages[errorCount] = 'Invalid First Name'
							errorCount++;
						}
						
						if (!form.lastName.value.match(/^[A-Za-z-]+$/)) {
							errorMessages[errorCount] = 'Invalid Last Name'
							errorCount++;
						}
						
						if (!form.age.value.match(/^[0-9]{1,3}$/)) {
							errorMessages[errorCount] = 'Invalid Age'
							errorCount++;
						}
						
						if (form.sex.value != 'Male' && form.sex.value != 'Female') {
							errorMessages[errorCount] = 'Invalid Sex'
							errorCount++;
						}
					
						try {
							if (errorCount == 0) {
								return true
							}
							else {
								$('##errors ul').html('');
								$.each(errorMessages, function(i, n){
									$('##errors ul').append('<li>' + n + '</li>')
									$('##errors').fadeIn();
								})
								return false;
							}
						} catch(err) {
							console.log(err);
							return false;
						}
						
					}
				</script>
			<!--- End Inserted by cfhtmlhead --->
		</cfsavecontent>
		
		<cfhtmlhead text="#jsContent#" />
		
    	<div id="content">
			<h2>Bypassing Client-Side Controls</h2>
			<p class="description">
				In this lesson you will try to get past the controls of this form and submit it with invalid data
			</p>
			
			<div class="main">
				
				<h3>Create an your profile page</h3>
				<div class="error" id="errors" style="display:none">
					<ul></ul>
				</div>
				<br />
				<form action="profile.cfm" id="profileForm" method="post">
					<label for="firstName">First Name : </label>
					<input type="text" name="firstName" id="firstName" value="" />
					<br /><br />
					<label for="lastName">Last Name : </label>
					<input type="text" name="lastName" id="lastName" value="" />
					<br /><br />
					<label for="age">Age : </label>
					<input type="text" name="age" id="age" value="" />
					<br /><br />
					<label for="sex">Sex : </label>
					<select name="sex" id="sex">
						<option>Male</option>
						<option>Female</option>
					</select>
					<br /><br />
					<input type="submit" name="btnSubmit" value="Create" />
				</form>
		
			    
			</div>
		  
		</div>
    </cfoutput>
</cf_layout>