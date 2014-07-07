<!--- TODO: Validate sheet names --->
<cffunction name="SpreadsheetCreateSheet" returntype="void" output="false">
	<cfargument name="spreadsheet" type="cfspreadsheet.tag.cfspreadsheet.cfc.poi" required="true" />
	<cfargument name="sheetName" type="string" required="false" hint="Name of the new sheet" />

	<cfif structKeyExists(arguments, "sheetName") and not len(trim(arguments.sheetName))>
			<cfthrow type="cfspreadsheet.tag.cfspreadsheet.cfc.poi" 
					message="Invalid Sheet Name [#arguments.sheetName#]" 
					detail="SheetName value cannot be an empty string." />
	</cfif>	
	
	<cfset Local.args = {} />
	<cfif structKeyExists(arguments, "sheetName")>
		<cfset Local.args.sheetName = arguments.sheetName />
	</cfif>

	<cfset arguments.spreadsheet.createSheet( argumentCollection=Local.args ) />
</cffunction>