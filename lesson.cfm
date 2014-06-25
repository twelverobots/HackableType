<cfparam name="url.lesson" type="variablename" default="Undefined">
<cfparam name="url.action" default="init" type="variablename">
<cfswitch expression="#url.action#">
	<cfcase value="setup">
		<cftry>
			<cfset lesson = application.lessonFactory.getLesson(url.lesson)>
			<cfcatch>Invalid Lesson<cfrethrow></cfcatch>
		</cftry>
		<cfset lesson.setup()>
		<cfset session.currentLesson = "lessons/" & url.lesson>
		<cflocation url="/lessons/#url.lesson#/playground/" addtoken="false">
	</cfcase>
	<cfdefaultcase>
		Unknown Action
	</cfdefaultcase>
</cfswitch>
