<cfif thisTag.executionmode eq "start">
	<cfoutput>
		<cf_lessonToolbar />
		<div id="content">
			<cfparam name="attributes.ahints" default="#ArrayNew(1)#" />
			
			<h2>Hints</h2>
			<div id="hintWrapper">

			<div class="panel-group" id="accordion">
				<cfloop from="1" to="#ArrayLen(attributes.ahints)#" index="hintIndex">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="##accordion" href="##collapse#hintIndex#">
	          						Hint ###hintIndex#
	        					</a>
	      					</h4>
	    				</div>
	    				<div id="collapse#hintIndex#" class="panel-collapse collapse out">
	      					<div class="panel-body">
	        					#attributes.ahints[hintIndex]#
	      					</div>
	    				</div>
	  				</div>	
	  			</cfloop>
  			</div>

				
			</div>
		</div>
	</cfoutput>
</cfif>