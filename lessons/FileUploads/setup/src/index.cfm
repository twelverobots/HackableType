<cf_layout>	
	<!--- Add the lesson toolbar --->
	<cf_lessonToolbar />

	<div id="content">
	<h3>Please Upload a Photo</h3>
	<p>Can you upload and execute a <code>cfm</code> file using this code?</p>
	<br />
	<form action="upload.cfm" method="post" enctype="multipart/form-data">
		<input type="file" name="photo" />
		<input type="submit" value="Upload Photo" />
	</form>
	
	</div>

</cf_layout>