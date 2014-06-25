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
		
		<cfset copyLessonSourceFiles()>
		
	</cffunction>
	
	<cffunction name="copyLessonSourceFiles" returntype="void" access="package" output="false" hint="I copy files from setup/src in to the root of the lesson dir.">
		<cfset var dir = "" />
		<cfset var lessonDir = getLessonDirectory()>
		<cfset var playgroundDir = lessonDir & "playground/">
		<cfdirectory action="list" name="dir" directory="#lessonDir#setup/src/" type="file" />
		<cfif NOT directoryExists(playgroundDir)>
			<cfset directoryCreate(playgroundDir)>
		</cfif>
		<cfloop query="dir">
			<cfset fileCopy(dir.directory & "/" & dir.name, playgroundDir) />
			<cfset fileSetAccessMode(playgroundDir & dir.name, "777") />
		</cfloop>
		<!---
		<cfif NOT fileExists(lessonDir & "index.cfm")>
			<cfset fileWrite(lessonDir & "index.cfm", "<cflocation url=""playground/"" addtoken=""false"">")>
			<cfset fileSetAccessMode(lessonDir & "index.cfm", "777") />
		</cfif>
		--->
	</cffunction>
	
	<cffunction name="getLessonDirectory" returntype="string" output="false" hint="I return the lesson directory path, eg: /lessons/lessonName/">
		<cfreturn ReplaceNoCase(GetCurrentTemplatePath(), "setup/" & ListLast(GetCurrentTemplatePath(), "/"), "")>
	</cffunction>
	
	<cffunction name="getConfiguration" returntype="Configuration" output="false" access="public" hint="I return the config bean">
		<cfreturn variables.configuration>
	</cffunction>

</cfcomponent>
	
