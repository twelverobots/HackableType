<cfcomponent extends="components.Lesson" implements="interfaces.iLesson">
	<cfset variables.lessonName = "File Uploads" />

	<cffunction name="setup" access="public" returntype="void" output="false">
		<cfset var imgPath = getLessonDirectory() & "images">
		<cfset copyLessonSourceFiles()>
		<cfif DirectoryExists(imgPath)>
			<cfdirectory action="delete" recurse="true" directory="#imgPath#">
		</cfif>
		<!--- yeah 777 is bad --->
		<cfdirectory action="create" directory="#imgPath#" mode="777">
	</cffunction>

</cfcomponent>
