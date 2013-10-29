<!--- TODO: file write/read error --->
<cffunction name="SpreadsheetReadBinary" returntype="binary" output="false">
	<cfargument name="spreadsheet" type="ext.cfspreadsheet.cfc.poi" required="true" />
	
	<cfreturn arguments.spreadsheet.readBinary() />
</cffunction>