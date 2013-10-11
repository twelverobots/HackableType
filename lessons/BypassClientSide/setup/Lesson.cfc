<cfcomponent extends="components.Lesson" implements="interfaces.iLesson">
	<cfset variables.lessonName = "Bypassing Client-Side Controls" />

	<cffunction name="setup" access="public" returntype="void" output="false">
		<cfset var dir = "" />
		<cfset var thisDir = ReplaceNoCase(GetCurrentTemplatePath(), "Lesson.cfc", "")>
		
		<cfset copyLessonSourceFiles()>
		
	</cffunction>	

</cfcomponent>
