<cfcomponent displayname="TestCfspreadsheet"  extends="tests.cfspreadsheet.functions.Base">

	<cfimport taglib="/cfspreadsheet/tag/cfspreadsheet" prefix="sh" />
	<cfset workdir = expandPath("/tests/cfspreadsheet/work")>
	<cfset datadir = expandPath("/tests/cfspreadsheet/data")>

	<cffunction name="setUp" returntype="void" access="public">
		<cfif !directoryExists(workdir)>
			<cfdirectory action="create" directory="#workdir#" />
		</cfif>
	</cffunction>

	<cffunction name="tearDown" returntype="void" access="public">
	</cffunction>

	<cffunction name="testNewSpreadsheet">
		<!--- create a new spreadsheet --->
		<cfset mySheet = SpreadSheetNew() />

		<!--- save it to disk --->
		<cfset pathToFile = "#workdir#/writeNewSpreadsheet.xls" />
		<sh:spreadsheet action="write"
		    name="mySheet"
		    fileName="#pathToFile#"
		    overwrite="true" />
		<cfdump var="#pathToFile#" label="Successfully Created File" />
	</cffunction>

	<cffunction name="testRead_Spreadsheet_Into_Query">
		<!--- read in the file --->
		<cfset pathToFile = "#datadir#/someExistingFile.xls" />
		<sh:spreadsheet action="read"
		        src="#pathToFile#"
		        query="myQuery" />

		<!--- display query results --->
		<cfdump var="#myQuery#" label="Query With Default Column Names" />

		<!--- specify query column names --->
		<sh:spreadsheet action="read"
		        columnNames="RecordID,ArtistName, ArtistCode"
		        src="#pathToFile#"
		        query="myQuery" />

		<!--- display query results --->
		<cfdump var="#myQuery#" label="Query With Custom Column Names" />

		<!--- use header row as column names --->
		<sh:spreadsheet action="read"
		        headerRow="1"
				excludeHeaderRow="true"
		        src="#pathToFile#"
		        query="myQuery" />

		<!--- display query results --->
		<cfset assertEquals(12,myQuery.recordcount)>
		<cfset debug(myQuery) />
	</cffunction>

	<cffunction name="testRead_Spreadsheet_Into_Query_xlsx">
		<!--- read in the file --->
		<cfset pathToFile = "#datadir#/someExistingFile.xlsx" />
		<sh:spreadsheet action="read"
		        src="#pathToFile#"
		        query="myQuery" />

		<!--- display query results --->
		<cfdump var="#myQuery#" label="Query With Default Column Names" />

		<!--- specify query column names --->
		<sh:spreadsheet action="read"
		        columnNames="RecordID,ArtistName, ArtistCode"
		        src="#pathToFile#"
		        query="myQuery" />

		<!--- display query results --->
		<cfdump var="#myQuery#" label="Query With Custom Column Names" />

		<!--- use header row as column names --->
		<sh:spreadsheet action="read"
		        headerRow="1"
				excludeHeaderRow="true"
		        src="#pathToFile#"
		        query="myQuery" />

		<!--- display query results --->
		<cfset debug(myQuery) />
		<cfset assertEquals(3,myQuery.recordcount)>
	</cffunction>


</cfcomponent>
