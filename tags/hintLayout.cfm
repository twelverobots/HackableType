<cfif thisTag.executionmode eq "start">
	<cfoutput>
		<cf_lessonToolbar />
		<div id="content">
			<cfparam name="attributes.ahints" default="#ArrayNew(1)#" />
			
			<h2>Hints</h2>
			<div id="hintWrapper">
				<cfloop from="1" to="#ArrayLen(attributes.ahints)#" index="hintIndex">
					<div class="hint">
						<p class="hintTitle">
							Hint ###hintIndex#
							<a href="##" class="hintOpenLink">open</a>
						</p>
						<div class="hintText">
							#attributes.ahints[hintIndex]#
						</div>
						
					</div>
				</cfloop>	
			</div>
		</div>
	</cfoutput>
</cfif>