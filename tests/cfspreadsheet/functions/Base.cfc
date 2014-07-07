<cfcomponent extends="mxunit.framework.TestCase">

<!--- 
	<cffunction name="beforeTests" returntype="void" access="public">
		<cfset var Local = {}>
		<!--- add a few values --->
		<cfset Local.startRow = 1 />
		<cfset Local.startCol = 1 />
		<cfset Local.origData = "a,b,c,d,e,1,2,3,4,5" />
		<cftry>
			<cfset Local.sheet = SpreadsheetNew() />
			<cfset SpreadsheetAddColumn(Local.sheet, Local.origData, Local.startRow, Local.startCol) />
			<cfcatch>
				<cfset debug(cfcatch) />
				<cfif findNoCase("No matching function",cfcatch.message)>
					<cfset install = createObject("component","tests.cfspreadsheet.extension.TestInstall") />
					<cfset install.beforeTests() />
					<cfset install.setUp() />
					<cfset install.testInstallDevCustomTag(uninstall=false) />
					<cfset install.testInstallMapping(uninstall=false) />
					<cfset install.testInstallFunctionStubs(uninstall=false) />
					<cfadmin action="restart"
						type="server"
						password="#session.passwordserver#"
						remoteClients=""/>
					<cfthrow message="had to install the tag.  Try again now" detail="had to install the tag.  Try again now. (#cfcatch.message#)">
				<cfelse>
					<cfrethrow />
				</cfif>
			</cfcatch>
		</cftry>
	</cffunction>
 --->

</cfcomponent>