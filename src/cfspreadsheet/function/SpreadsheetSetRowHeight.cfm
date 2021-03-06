<cffunction name="SpreadsheetSetRowHeight" returntype="void" output="false">
	<cfargument name="spreadsheet" type="cfspreadsheet.tag.cfspreadsheet.cfc.poi" required="true" />
	<cfargument name="row" type="numeric" required="true" />
	<cfargument name="height" type="numeric" required="true" hint="Height in points" />
	
	<cfset arguments.spreadsheet.setRowHeight(arguments.row, arguments.height) />
</cffunction>