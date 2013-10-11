<cfcomponent extends="components.Lesson" implements="interfaces.iLesson">
	<cfset variables.lessonName = "Reflected XSS Lesson" />

	<cffunction name="setup" access="public" returntype="void" output="false">
		<cfset var initQuery = "" />
		<cfset var sqlText = "" />
		<cfset var initFile = "" />
		<cfset var dir = "" />
		<cfset var thisDir = ReplaceNoCase(GetCurrentTemplatePath(), "Lesson.cfc", "")>
		
		<cfset copyLessonSourceFiles()>
		
	</cffunction>	

</cfcomponent>
