<!--- TODO: add usage notes for the format struct --->
<cffunction name="SpreadsheetFormatRows" returntype="void" output="false">
	<cfargument name="spreadsheet" type="cfspreadsheet.tag.cfspreadsheet.cfc.poi" required="true" />
	<cfargument name="format" type="struct" required="true" />
	<cfargument name="rows" type="string" required="true" />
	
	<cfset arguments.spreadsheet.formatRows(arguments.format, arguments.rows) />
</cffunction>