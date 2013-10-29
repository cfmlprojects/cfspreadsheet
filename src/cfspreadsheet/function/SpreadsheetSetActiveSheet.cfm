<cffunction name="SpreadsheetSetActiveSheet" returntype="void" output="false"
			Hint="Sets the given sheetName as the currently active sheet">
	<cfargument name="spreadsheet" type="ext.cfspreadsheet.cfc.poi" required="true" hint="Target Spreadsheet" />
	<cfargument name="sheetName" type="string" required="true" hint="Name of an existing sheet within the spreadsheet" />
	
	<cfset arguments.spreadsheet.setActiveSheet( argumentCollection=arguments ) />
</cffunction>