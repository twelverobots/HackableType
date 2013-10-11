<cfsilent>
	
</cfsilent><cfoutput><cfif thisTag.executionmode eq "start"><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<cfsetting showdebugoutput="false" />
		<link rel="icon" href="/images/favicon.ico" />
	
		<!--CSS -->
		<link href="/css/main.css" rel="stylesheet" type="text/css" media="screen" />
		<!--[if IE6]><link rel="stylesheet" type="text/css"  
		href="ie.css"><![endif]-->
		
		<link href="/css/style.css" rel="stylesheet" type="text/css" media="screen" />
		<link href="/css/table.css" rel="stylesheet" type="text/css" media="screen" />
		
		<!--JAVASCRIPT -->
		
		<script src="/js/jquery-1.4.1.js" type="text/javascript"></script>
		<script src="/js/hints.js" type="text/javascript"></script>
		
		<!--[if lt IE 7]>
		<script src="http://ie7-js.googlecode.com/svn/version/2.0(beta3)/IE7.js" type="text/javascript"></script>
		<![endif]-->
		<!--[if lt IE 7]>
			<script type="text/javascript" src="js/unitpngfix.js"></script>
		<![endif]-->
		
		<!--PAGE TITLE -->
		<title>hackableType</title>
	</head> 
	
	<!--BEGIN BODY -->
	<body>
		<div id="wrapper">
			<!--BEGIN HEADER -->
			<div id="header">
				<h1><a href="/"><img src="/images/logo.png" alt="image" /></a></h1><!--change your logo image-->
		    	<div id="menu"><!--Main navigation. Create or delete links. The class="current" indicates the current page You're on, so You will notice that on the news.html the class="current" is on that link. When You create more links just place the class="current" on taht link.-->
					<a href="/index.cfm">Home</a>
					<a href="/index.cfm?lessons">Lessons</a>
		  			<a href="/help.cfm">Help</a>
				</div>
		        <div class="hr"></div><!--horizontal rule -->
				
			</div>
		    <br class="spacer" /><!--DON'T DELETE THIS-->
<cfelse>
			<br class="spacer" /><!--DON'T DELETE THIS-->
		  	<div id="footer">hackableType is open-sourced under the GPL license. &copy; Copyright <a href="http://12robots.com/">Jason Dean</a> &amp; <a href="http://foundeo.com/">Pete Freitag</a> 2010. Template by <a href="http://www.markoprljic.iz.hr" target="_blank">Marko Prljic</a></div>
		</div>
		<br class="spacer" /><!--DON'T DELETE THIS-->
	</body>
	<!--END BODY -->
</html>
</cfif>
</cfoutput>
