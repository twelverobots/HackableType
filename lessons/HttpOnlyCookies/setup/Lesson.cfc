<cfcomponent extends="components.Lesson" implements="interfaces.iLesson">
	<cfset variables.lessonName = "HttpOnlyCookies" />

	<cffunction name="setup" access="public" returntype="void" output="false">
		<cfset copyLessonSourceFiles()>
	</cffunction>

</cfcomponent>
