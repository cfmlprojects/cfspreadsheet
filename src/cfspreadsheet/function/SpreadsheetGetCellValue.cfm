<cffunction name="SpreadsheetGetCellValue" returntype="string" output="false">
	<cfargument name="spreadsheet" type="cfspreadsheet.tag.cfspreadsheet.cfc.poi" required="true" />
	<cfargument name="row" type="numeric" required="true" />
	<cfargument name="column" type="numeric" required="true" />
	
	<cfreturn arguments.spreadsheet.getCellValue(arguments.row, arguments.column) />
</cffunction>