<cfif NOT structKeyExists(SESSION, "currentLesson")>
	<cfset session.currentLesson = "lessons/" & ListGetAt(cgi.script_name, 2, "/")>
</cfif>

<cfsavecontent variable="jsVar">
<!-- Begin Added in lessonToolBar custom tag -->
<script>
	$(function(){
		$('#resetLink').bind('click', function(){
			if (!confirm("Are you sure you want to reset this lesson? This will erase any code changes you have made.")) {
				return false;
			}
		});
	})
	
</script>
<!-- end Added in lessonToolBar custom tag -->
</cfsavecontent>

<cfif thisTag.executionmode eq "start">
	<cfhtmlhead text="#jsVar#" />
	
	<div id="left">
		<cfoutput>
	    	<ul class="nav nav-pills nav-stacked">
				<li<cfif cgi.script_name contains "playground"> class="active"</cfif>><a href="/#session.currentLesson#/playground/index.cfm">Lesson Home</a></li>
				<li><a id="resetLink" href="/lesson.cfm?action=setup&lesson=#ListLast(session.currentLesson, '/')#">Reset this lesson</a></li>
				<li<cfif cgi.script_name contains "hints.cfm"> class="active"</cfif>><a href="/#session.currentLesson#/support/hints.cfm">Hints</a></li>
				<li<cfif cgi.script_name contains "solution.cfm"> class="active"</cfif>><a href="/#session.currentLesson#/support/solution.cfm">Solution</a></li>
			</ul>
	    </cfoutput>
	</div>
</cfif>