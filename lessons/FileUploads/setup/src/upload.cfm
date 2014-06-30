<cf_layout>	
	<!--- Add the lesson toolbar --->
	<cf_lessonToolbar />
	
	
	<cffile action="upload" 
			accept="image/jpg,image/gif,image/png,image/jpeg" 
			filefield="photo" 
			strict="false"
			destination="#ExpandPath("../images/")#" 
			nameconflict="overwrite">

	<h3>Thanks for uploading your photo:</h3>
	<br />
	<cfoutput>
		<img src="images/#cffile.ServerFile#" alt="Image Preview" />
	</cfoutput>

</cf_layout>
