<cfcomponent  displayname="Applicaiton" hint="Application.cfc" output="false">
	<cfscript>
		this.name = "hackableType";
		this.customtagpaths = expandPath('/tags');
		this.sessionManagement = true;
		this.scriptProtect = "off";
	</cfscript>
	
	<cffunction name="onApplicationStart" access="public" returntype="void" output="false">
		<cfset application.dsn = "hackableType" />
		
		<cfset application.siteRoot = listDeleteAt(cgi.SCRIPT_NAME, ListLen(cgi.SCRIPT_NAME, "/"), "/") />
		<cfset application.config = CreateObject("component", "components.Configuration").init(application.dsn)>
		
		<cfset application.lessonFactory = CreateObject("component", "components.LessonFactory").init(application.config)>
		<cfset application.encoder = createObject('java', 'org.owasp.esapi.reference.DefaultEncoder') />
		
	</cffunction>
	
	<cffunction name="onSessionStart" access="public" returntype="void" output="false">
		
	</cffunction>

	<cffunction name="onRequestStart" access="public" returntype="void" output="false">
		<cfheader name="X-XSS-Protection" value="0">
		<cfset onApplicationStart() />
	</cffunction>

	<cffunction name="onError" access="public" returntype="void" output="false">
		<cfargument name="exception" />
		<cfargument name="event" />
	
		<cfif exception.type eq "database">
			<cfinclude template="database.cfm" />
			<cfabort>
		<cfelse>
			<cfinclude template="error.cfm" />
			<cfabort>
		</cfif>
	</cffunction>
</cfcomponent>