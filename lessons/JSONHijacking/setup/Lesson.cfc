<cfcomponent extends="components.Lesson" implements="interfaces.iLesson">
	<cfset variables.lessonName = "JSON Hijacking" />

	<cffunction name="setup" access="public" returntype="void" output="false">
		<cfset copyLessonSourceFiles()>
	</cffunction>

</cfcomponent>
