<cffunction name="SpreadsheetDeleteColumns" returntype="void" output="false">
	<cfargument name="spreadsheet" type="ext.cfspreadsheet.cfc.poi" required="true" />
	<cfargument name="range" type="string" required="true" />
	
	<cfset arguments.spreadsheet.deleteColumns(arguments.range) />
</cffunction>