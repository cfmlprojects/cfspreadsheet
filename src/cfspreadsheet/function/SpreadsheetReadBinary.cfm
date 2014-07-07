<!--- TODO: file write/read error --->
<cffunction name="SpreadsheetReadBinary" returntype="binary" output="false">
	<cfargument name="spreadsheet" type="cfspreadsheet.tag.cfspreadsheet.cfc.poi" required="true" />
	
	<cfreturn arguments.spreadsheet.readBinary() />
</cffunction>