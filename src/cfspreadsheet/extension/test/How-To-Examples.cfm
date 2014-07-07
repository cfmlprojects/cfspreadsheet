<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CFPOI Examples</title>
<link rel="stylesheet" href="css/style.css" type="text/css">
<script type="text/javascript">
		function loadExample(type, example) {
			document.getElementById('type').value = type;
			document.getElementById('example').value = example;
			Railo.Ajax.refresh('snippetDiv');
			return false;
		}
</script>	
</head>
<body>
	<cfset excludes  = GetFileFromPath(CGI.SCRIPT_NAME) />
	<cfset baseDirec = "cfspreadsheet" />
	<cfset snippets  = DirectoryList(ExpandPath(baseDirec), false, "name", "*.cfm", "asc") />
	
	
	<div class="container">
		<h2>CFSpreadSheet Examples</h2>
		<!--- summary --->
		<div class="leftCol">
			<ul>
				<cfoutput>
				<cfloop array="#snippets#" index="name">
					<cfif not listFindNoCase(excludes, name)>
						<cfset title 	= replace( listFirst( name, "."), "_", chr(32), "all") />
						<li><a href="#baseDirec#/#name#" onClick="return loadExample('#baseDirec#', '#name#')">#title#</a></li>
					</cfif>
				</cfloop>
				</cfoutput>		
			</ul>
		</div>
		<!--- example --->
		<div class="rightCol">
			<cfDiv id="snippetDiv" 
				bind="url:./util/loadSnippet.cfm?type={frmOpt:type}&example={frmOpt:example}"
				bindonload="false" />
		</div>
	</div>
	<form id="frmOpt" name="frmOpt">
		<input type="hidden" id="type" name="type" />
		<input type="hidden" id="example" name="example" />
	</form>
</body>
</html>
