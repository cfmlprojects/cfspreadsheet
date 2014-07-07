<cffunction name="SpreadsheetSetCellValue" returntype="void" output="false">
	<cfargument name="spreadsheet" type="cfspreadsheet.tag.cfspreadsheet.cfc.poi" required="true" />
	<cfargument name="value" type="string" required="true" />
	<cfargument name="row" type="numeric" required="true" />
	<cfargument name="column" type="numeric" required="true" />
	
	<cfset arguments.spreadsheet.setCellValue(arguments.value, arguments.row, arguments.column) />
</cffunction>