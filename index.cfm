<cfsilent>
	<cfdirectory action="list" type="dir" name="lessonDir" directory="#expandPath('/lessons')#" />
	<cfquery name="lessonDir" dbtype="query">
		SELECT * 
		FROM lessonDir
		WHERE name not like '.%'
	</cfquery>
</cfsilent>
<cf_layout>
	<cfoutput>
		<div id="content">
			<cfif structKeyExists(url, "lessons")>
				<h2>Lessons</h2>
				<ul>
				<cfset name = application.lessonFactory.getLessonNames() />
				<cfloop from="1" to="#ArrayLen(name[1])#" index="nameIndex">
					<li><a href="lesson.cfm?lesson=#URLEncodedFormat(name[1][nameIndex])#&amp;action=setup">#name[2][nameIndex]#</a></li>
				</cfloop>
				</ul>
				
			<cfelse>
				<h2>Welcome to hackableType</h2>
				<p>
					Hackable type is web application specically designed to be hacked. It is a tool for 
					learning how to explot web applications, and how to fix the vulnerabilties that allow those exploits
				</p>
				
				<p>
					hackableType is broken into short, easy-to-follow lessons that each cover a specific vulnerability 
					commonly found in web applications.
				</p>
			</cfif>
		</div>
	</cfoutput>
</cf_layout>