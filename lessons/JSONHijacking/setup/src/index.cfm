<cf_layout>	
	<!--- Add the lesson toolbar --->
	<cf_lessonToolbar />
	
	<div id="content">
	
	<h2>JSON Hijacking</h2>
	
	<cfset session.isGuyWhoGetsLaxative = true>
	
	<p>Your mission should you choose to accept it, is to obtain the CIA NOC list using JSON Hijacking.</p>
	<p>Use the domain <strong>hackersite.com</strong> it is aliased to the same web root as this site.</p>
	
	<cfajaxproxy cfc="cia" jsclassname="ciaCFC">
	<script language="javascript">
		$(document).ready(function() {
			var ciaObj = new ciaCFC();
			ciaObj.setSyncMode();
			
			var nocList = ciaObj.getNocList();
			
			if (nocList != null) {
					$(nocList).each(function(){
						$('.nocArea').append('<div>' +this.AGENT + ' id:' + this.ID);	
					});	
			}
			
		});
	</script>
	
	<h3>The Noc List:</h3>
	<div class="nocArea">
	

	</div>

</cf_layout>