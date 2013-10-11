
<cfparam name="form.message" default="" type="string">

	
<cf_layout>	
	<!--- Add the lesson toolbar --->
	<cf_lessonToolbar />
	<div id="content">
		<cfset gateway = CreateObject("component", "dbGateway")>
		<cfset gateway.postMessage(form.message)>	
		<h2>Message Posted</h2>
		<p>Your message has been sent to HR.</p>
	</div>
</cf_layout>

