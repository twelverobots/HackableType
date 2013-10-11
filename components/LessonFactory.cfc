<cfcomponent hint="I return lesson components">
	<cfset variables.configuration = "">
	
	<cffunction name="init" returntype="LessonFactory" output="false" access="public" hint="Called to initialize the Factory">
		<cfargument name="configuration" type="any" required="true">
		
		<cfset variables.configuration = arguments.configuration>
		<cfreturn this>
	</cffunction>
	
	<cffunction name="getLesson" returntype="Lesson" output="false" hint="I return a lesson component">
		<cfargument name="name" type="variablename" required="true">
		<cfreturn CreateObject("component", "lessons." & arguments.name & ".setup.Lesson").init(variables.configuration)>
	</cffunction>
	
	<cffunction name="getLessonNames" returntype="array" output="false">
		<cfset var names = ArrayNew(2)>
		<cfset var dir = "">
		
		<cfdirectory action="list" directory="#ExpandPath("/lessons/")#" name="dir">

		<cfoutput query="dir">
			<cfif LCase(dir.type) IS "dir" AND dir.name IS NOT ".svn">
				<cfset ArrayAppend(names[1], dir.name)>
				<cftry>
					<!--- 
					This tries to call the getName() mehtod of a lesson,
					if it succeeds then it uses that name, if it does not it
					uses the name of the folder
					 --->
					<cfset arrayAppend(names[2], getLesson(dir.name).getName()) />
					<cfcatch><cfset ArrayAppend(names[2], dir.name)></cfcatch>
				</cftry>
			</cfif>
		</cfoutput>
		<cfreturn names>
	</cffunction>
	
</cfcomponent>