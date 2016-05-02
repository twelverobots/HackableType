<cf_layout>	
	<!--- Add the lesson toolbar --->
	<cf_lessonToolbar />
	
	<cfparam name="url.type" default="default">
	<cfparam name="url.default" default="one">
	<div id="content">
		<h2>Evaluate Lesson</h2>
		<p>Can you cause a CFML function to execute?</p>
		<br>
		<cfoutput>Type: #Evaluate("url.#url.type#")#</cfoutput>
	</div>
</cf_layout>