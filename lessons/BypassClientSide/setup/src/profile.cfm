<cf_layout>
	<!--- Add the lesson toolbar --->
	<cf_lessonToolbar />
	
	<cfparam name="form.firstName" default="" />
	<cfparam name="form.lastName" default="" />
	<cfparam name="form.age" default="" />
	<cfparam name="form.sex" default="" />
	
	<div id="content">
		<cfoutput>
			<h2>Your Profile</h2>
			Name: #form.firstName# #form.lastName#<br />
			<br />
			Age : #form.age#<br />
			Sex : #form.sex#<br />
		</cfoutput>
	</div>
</cf_layout>