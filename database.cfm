<cf_lessonToolbar />
<div style="padding:30px; float: left;">
	You screwed up something in the DB
	<br />
	<cfoutput>
		<cfif IsDefined("exception.cause.message")>
			#exception.cause.message#
		<cfelseif isDefined("exception.message")>
			#exception.message#
		</cfif>
	</cfoutput>
	<cfdump var="#exception#">
</div>

