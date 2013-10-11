<cfcomponent extends="components.Lesson" implements="interfaces.iLesson">
	<cfset variables.lessonName = "Cross Site Request Forgery" />

	<cffunction name="setup" access="public" returntype="void" output="false">
		<cfset var initQuery = "" />
		<cfset var sqlText = "" />
		<cfset var initFile = "" />
		<cfset var dir = "" />
		<cfset var thisDir = ReplaceNoCase(GetCurrentTemplatePath(), "Lesson.cfc", "")>
		
		<!--- RUN SQL Scripts to set up the DB --->
		
		<!--- Read in the SQL from an external text file--->
		<cfset initFile = fileOpen(thisDir & 'SQL.sql') />
		
		<cfloop condition="NOT FileisEOF(initFile)">
			<cfset sqlText = FileReadLine(initFile) />
			
			<cfquery name="initQuery" datasource="#getConfiguration().getDatasource()#">
				#preserveSingleQuotes(sqlText)#
			</cfquery>
		</cfloop>
		
		<cfset copyLessonSourceFiles()>
		
	</cffunction>	

</cfcomponent>
