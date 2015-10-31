<cfsilent>
	
</cfsilent><cfoutput><cfif thisTag.executionmode eq "start"><!DOCTYPE html >
<html>
	<head>
		<cfsetting showdebugoutput="false" />
		<link rel="icon" href="/images/favicon.ico" />
		<meta charset="utf-8">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
		<!--CSS -->
		<link href="/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="screen" />
		
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		  <script src="//cdn.jsdelivr.net/html5shiv/3.7.2/html5shiv-printshiv.min.js"></script>
		  <script src="//cdn.jsdelivr.net/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
		
		<link href="/css/style.css" rel="stylesheet" type="text/css" media="screen" />
		<link href="/css/table.css" rel="stylesheet" type="text/css" media="screen" />
		
		<!--JAVASCRIPT -->
		<script src="/js/jquery-1.11.1.min.js" type="text/javascript"></script>
		
		
		
		<!--PAGE TITLE -->
		<title>hackableType</title>
	</head> 
	
	<!--BEGIN BODY -->
	<body>
		<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	      <div class="container">
	        <div class="navbar-header">
	          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
	            <span class="sr-only">Toggle navigation</span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	          </button>
	          <a class="navbar-brand" href="/">hackableType</a>
	        </div>
	        <cfparam name="attributes.activeMenu" default="lessons">
	        <div class="collapse navbar-collapse">
	          <ul class="nav navbar-nav">
	            <li<cfif attributes.activeMenu IS "home"> class="active"</cfif>><a href="/">Home</a></li>
	            <li<cfif attributes.activeMenu IS "lessons"> class="active"</cfif>><a href="/index.cfm?lessons">Lessons</a></li>
	            <li<cfif attributes.activeMenu IS "help"> class="active"</cfif>><a href="/help.cfm">Help</a></li>
	            <li class="dropdown<cfif attributes.activeMenu IS "tools"> active</cfif>">
                <a href="/tools/http.cfm" class="dropdown-toggle" data-toggle="dropdown">Tools <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="/tools/encoders.cfm">Encoders</a></li>
                  <li><a href="/tools/http.cfm">HTTP Util</a></li>
                  <li class="divider"></li>
                  <li class="dropdown-header">Regex Tools</li>
                  <li><a href="/regex/refind.cfm">ReFind Tester</a></li>
                  <li><a href="/regex/rematch.cfm">ReMatch Tester</a></li>
                  <li><a href="/regex/rereplace.cfm">ReReplace Tester</a></li>
                </ul>
              </li>
	          </ul>
	        </div><!--/.nav-collapse -->
	      </div>
    	</div>
		<div class="container" id="main">
<cfelse><!--- footer --->
		</div>
		<div id="footer">hackableType is open-sourced under the GPL license. &copy; Copyright <a href="http://12robots.com/">Jason Dean</a> &amp; <a href="http://foundeo.com/">Pete Freitag</a> 2010-#Year(now())#.</div>
		
		<script src="/js/bootstrap.min.js" type="text/javascript"></script>
		<script src="/js/hints.js" type="text/javascript"></script>
	</body>
	
</html>
</cfif>
</cfoutput>
