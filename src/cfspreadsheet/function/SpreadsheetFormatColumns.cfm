<!--- TODO: add usage notes for the format struct --->
<cffunction name="SpreadsheetFormatColumns" returntype="void" output="false">
	<cfargument name="spreadsheet" type="cfspreadsheet.tag.cfspreadsheet.cfc.poi" required="true" />
	<cfargument name="format" type="struct" required="true" />
	<cfargument name="columns" type="string" required="true" />
	
	<cfset arguments.spreadsheet.formatColumns(arguments.format, arguments.columns) />
</cffunction>