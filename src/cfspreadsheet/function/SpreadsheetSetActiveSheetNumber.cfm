<cffunction name="SpreadsheetSetActiveSheetNumber" returntype="void" output="false"
			Hint="Sets the sheet at the given position as the currently active sheet">
	<cfargument name="spreadsheet" type="cfspreadsheet.tag.cfspreadsheet.cfc.poi" required="true" hint="Target Spreadsheet" />
	<cfargument name="sheetIndex" type="string" required="true" hint="Sheet Position. Value between 1 and the total number of sheets in the spreadsheet" />
	
	<cfset arguments.spreadsheet.setActiveSheet( argumentCollection=arguments ) />
</cffunction>