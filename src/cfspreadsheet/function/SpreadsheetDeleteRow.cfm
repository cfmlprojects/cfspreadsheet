<cffunction name="SpreadsheetDeleteRow" returntype="void" output="false">
	<cfargument name="spreadsheet" type="ext.cfspreadsheet.cfc.poi" required="true" />
	<cfargument name="row" type="numeric" required="true" />
	
	<cfset arguments.spreadsheet.deleteRow(arguments.row) />
</cffunction>