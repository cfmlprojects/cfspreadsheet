<cfparam name="url.type"    default="cfspreadsheet" />
<cfparam name="url.example" default="" />

<html>
<head>
	<title>CFPOI Example</title>
</head>
<body class="example">
	<cfset absPath  = ExpandPath("../#url.type#/#url.example#") />
	<cfif FileExists( absPath )>
		<cfset title = replace( listFirst( url.example, "."), "_", chr(32), "all") />
		<cfset content = trim( fileRead(absPath) ) />
		
		<cfoutput>		
		<h3>How to #title#</h3>
		<a href="#url.type#/#url.example#" target="_blank">Run Example</a><br />
		<pre>#HTMLEditFormat(Replace(content, chr(10), chr(10)&chr(10), "all"))#</pre>
		</cfoutput>		
	</cfif>
	</div>
</body>
</html>