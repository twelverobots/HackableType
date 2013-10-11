<cfcomponent displayname="Lesson Component" hint="All Lessons should extend this one">
	<cfset variables.lessonName = "Undefined">
	<cfset variables.configuration = "">
	
	<cffunction name="init" returntype="Lesson" output="false" hint="I am called when a new instance of a Lesson is invoked">
		<cfargument name="configuration" type="any" required="true">
		<cfset var componentName = GetMetaData(this).name>
		<cfif ListLen(componentName, ".") EQ 3>
			<cfset variables.lessonName = ListGetAt(componentName, 2, ".")>
		</cfif>
		<cfset variables.configuration = arguments.configuration>
		<cfreturn this>
	</cffunction>
	
	<cffunction name="reset" returntype="void" output="false" hint="I reset a lesson">
		<cfset setup()>
	</cffunction>

	<cffunction name="getName" returntype="string" output="false" hint="I return the Name of the lesson">
		<cfreturn variables.lessonName>
	</cffunction>
	
	<cffunction name="setup" access="public" returntype="void" output="false">
		<cfset var initQuery = "" />
		<cfset var sqlText = "" />
		<cfset var initFile = "" />
		<cfset var dir = "" />
		<cfset var thisDir = ReplaceNoCase(GetCurrentTemplatePath(), "Lesson.cfc", "")>
		
		<!--- RUN SQL Scripts to set up the DB --->
		
		<!--- Read in the SQL from an external text file--->
		<cfset initFile = fileOpen(thisDir & 'SQLi.sql') />
		
		<cfloop condition="NOT FileisEOF(initFile)">
			<cfset sqlText = FileReadLine(initFile) />
			
			<cfquery name="initQuery" datasource="#getConfiguration().getDatasource()#">
				#preserveSingleQuotes(sqlText)#
			</cfquery>
		</cfloop>
		
		<cfset copyLessonSourceFiles()>
		
	</cffunction>
	
	<cffunction name="copyLessonSourceFiles" returntype="void" access="package" output="false" hint="I copy files from setup/src in to the root of the lesson dir.">
		<cfset var dir = "" />
		<cfset var lessonDir = getLessonDirectory()>
		<cfdirectory action="list" name="dir" directory="#lessonDir#setup/src/" type="file" />
		<cfloop query="dir">
			<cfset fileCopy(dir.directory & "/" & dir.name, lessonDir) />
			<cfset fileSetAccessMode(lessonDir & dir.name, "777") />
		</cfloop>
	</cffunction>
	
	<cffunction name="getLessonDirectory" returntype="string" output="false" hint="I return the lesson directory path, eg: /lessons/lessonName/">
		<cfreturn ReplaceNoCase(GetCurrentTemplatePath(), "setup/" & ListLast(GetCurrentTemplatePath(), "/"), "")>
	</cffunction>
	
	<cffunction name="getConfiguration" returntype="Configuration" output="false" access="public" hint="I return the config bean">
		<cfreturn variables.configuration>
	</cffunction>

</cfcomponent>
	
