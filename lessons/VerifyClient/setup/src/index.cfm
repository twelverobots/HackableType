<cf_layout>	
	<!--- Add the lesson toolbar --->
	<cf_lessonToolbar />
	
	<div id="content">
		<h2>Verify Client</h2>
		
		<cfset session.vcExampleAuthentiated = true>
		
		<cfform action="index.cfm" method="post">
			<cfgrid name="salesGrid" format="html"  stripeRows="true" bind="cfc:data.getSalesData({cfgridpage},{cfgridpagesize},{cfgridsortcolumn},{cfgridsortdirection})">
				<cfgridcolumn name="SalesYear" >
				<cfgridcolumn name="SalesQuarter">
				<cfgridcolumn name="Sales">
			</cfgrid>
		</cfform>
		
	</div>
</cf_layout>